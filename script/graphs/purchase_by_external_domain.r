source("common.r")

png(file="purchase_by_external_domain.png", width=default_width, height=default_height_half + 100, res=120)
op <- par(mar=c(9,4,4,4), lty=0)

res <- dbGetQuery(con, "
  select domain, count(*) from (select (regexp_matches(purchase_referrers.referrer, '//(.*?)/'))[1] as domain from purchase_referrers inner join purchases on purchases.id = purchase_referrers.purchase_id where purchases.status = 1 and purchase_referrers.type = 2) as domains group by domain order by count desc;
")

approved = c(
  "Facebook",
  "Google",
  "Reddit",
  "Rock Paper Shotgun",
  "Steam",
  "Tumblr",
  "Twitter",
  "Youtube",

  "alphabetagamer.com",
  "boingboing.net",
  "destructoid.com",
  "freeindiegam.es",
  "imgur.com",
  "indiedb.com",
  "indiegames.com",
  "jayisgames.com",
  "killscreendaily.com",
  "kotaku.com",
  "ludumdare.com",
  "opengameart.org",
  "pcgamer.com",
  "polygon.com",
  "theverge.com",
  "twitch.tv",
  "wip.warpdoor.com"
)

# normalize the list
sites <- gsub("^www\\.", "", res$domain)
sites <- gsub("^google.*", "Google", sites)
sites <- gsub("^t\\.co", "Twitter", sites)
sites <- gsub("^steamcommunity.*", "Steam", sites)
sites <- gsub("^reddit\\.com", "Reddit", sites)
sites <- gsub("^facebook\\.com", "Facebook", sites)
sites <- gsub("^youtube\\.com", "Youtube", sites)
sites <- gsub("^.*\\.tumblr\\.com", "Tumblr", sites)
sites <- gsub("^rockpapershotgun\\.com", "Rock Paper Shotgun", sites)

# mark everything else as other
sites[!is.element(sites, approved)] <- "Other"

total_referrals <- sum(res$count)

domain_counts <- aggregate(res$count, list(site=sites), sum)

domain_counts <- domain_counts[domain_counts$site != "Other", ]
domain_counts <- domain_counts[order(domain_counts$x, decreasing=TRUE), ]

rates <- domain_counts$x / total_referrals
names(rates) <- domain_counts$site


barplot(rates,
        col=colors,
        las=2,
        axes=FALSE,
        main="Top domains for purchases by percentage")

max_p <- max(rates)
stops <- axis_stops(max_p, 4)
axis_labels <- sprintf("%0.1f%%", stops * 100)

axis(2, # left side
     at=stops,
     labels=axis_labels,
     col=axis_color,
     las=2) # labels perpendicular


