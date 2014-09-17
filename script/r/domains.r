#!/usr/bin/env Rscript
source("common.r")

png(file="site_types.png", width=default_width, height=default_height_half + 100, res=120)
op <- par(mar=c(1,4,4,4))

res <- dbGetQuery(con, "
  select domain, count(*) from (select (regexp_matches(purchase_referrers.referrer, '//(.*?)/'))[1] as domain from purchase_referrers inner join purchases on purchases.id = purchase_referrers.purchase_id where purchases.status = 1 and purchase_referrers.type = 2) as domains group by domain order by count desc;
")

approved = c(
  "rockpapershotgun.com",
  "wip.warpdoor.com",
  "opengameart.org",
  "indiegames.com",
  "indiedb.com",
  "kotaku.com",
  "jayisgames.com",
  "freeindiegam.es",
  "polygon.com",
  "pcgamer.com",
  "ludumdare.com",
  "Twitter",
  "Google",
  "Facebook",
  "Steam",
  "Reddit",
  "Youtube",
  "Tumblr",
  "Rock Paper Shotgun")

# normalize the list
sites <- gsub("^www\\.", "", res$domain)
sites <- gsub("^google.*", "Google", sites)
sites <- gsub("^t\\.co.*", "Twitter", sites)
sites <- gsub("^steamcommunity.*", "Steam", sites)
sites <- gsub("^reddit\\.com*", "Reddit", sites)
sites <- gsub("^facebook\\.com*", "Facebook", sites)
sites <- gsub("^youtube\\.com*", "Youtube", sites)
sites <- gsub("tumblr\\.com*", "Tumblr", sites)
sites <- gsub("rockpapershotgun\\.com*", "Rock Paper Shotgun", sites)

# mark everything else as other
sites[!is.element(sites, approved)] <- "Other"

site_types <- sites

# calculate distribution sites vs personal sites
site_types[site_types!="Other"] <- "Promotional"
site_types[site_types=="Other"] <- "Personal"

site_types_counted = aggregate(res$count, list(site=site_types), sum)

parts = site_types_counted$x
names(parts) <- site_types_counted$site

pie(add_p_to_names(parts),
    col=colors,
    main="External purchase referrer type")

site_counts = res$count
site_counts <- site_counts[sites!="Other"]
sites <- sites[sites!="Other"]

sites_counted <- aggregate(site_counts, list(site=sites), sum)

parts = sites_counted$x
parts = parts / sum(res$count)

names(parts) <- sites_counted$site
parts <- sort(parts, decreasing=TRUE)

par(op)

png(file="purchases_by_site.png", width=default_width, height=default_height + 100, res=120)
op <- par(mar=c(9,4,4,4), lty=0)

barplot(parts,
        col=colors,
        las=2,
        axes=FALSE,
        main="Percentage of external purchases by site")

max_p <- max(parts)
stops <- axis_stops(max_p, 4)
axis_labels <- sprintf("%0.1f%%", stops * 100)

axis(2, # left side
     at=stops,
     labels=axis_labels,
     col=axis_color,
     las=2) # labels perpendicular

# reddit
par(op)
png(file="subreddits.png", width=default_width, height=default_height + 100, res=120)
op <- par(mar=c(10,4,4,1), lty=0)

res <- dbGetQuery(con, "
select lower(purchase_referrers.referrer) as referrer from purchase_referrers inner join purchases on purchases.id = purchase_referrers.purchase_id where purchases.status = 1 and purchase_referrers.type = 2 and purchase_referrers.referrer like '%reddit.com/r/%'
")

referrers <- gsub(".*?/r/([\\w]+).*", "\\1", res$referrer, perl=TRUE)
referrers <- table(referrers)
referrers <- sort(referrers, decreasing=TRUE)
referrers <- referrers / sum(referrers) * 100

barplot(referrers,
    col=colors,
    las=2,
    axes=FALSE,
    main="Purchases from Reddit by subreddit")

stops <- axis_stops(max(referrers), 6, 10)

axis(2, # left side
     at=stops,
     labels=sprintf("%0.1f%%", stops),
     col=axis_color,
     las=2) # labels perpendicular

