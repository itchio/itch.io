source("common.r")

png(file="purchase_by_internal_referrer.png",
    width=default_width,
    height=default_height,
    res=120)
op <- par(mar=c(4,4,4,2), lty=0)

# distribution of internal purchases
res <- dbGetQuery(con, "
  select referrer, count(*) from purchase_referrers
  inner join purchases on purchase_id = purchases.id and purchases.status = 1 and type = 1
  group by referrer
  order by count desc
")

parts = res$count
slugs = res$referrer

slugs[slugs=="browse"] = "Browse"
slugs[slugs=="user"] = "Profile"
slugs[slugs=="index"] = "Home"
slugs[slugs=="after_download"] = "Download"
slugs[slugs=="browse_bundles"] = "Bundles"
slugs[slugs=="search"] = "Search"
slugs[slugs=="tag"] = "Tags"

slugs[slugs=="recs"] = "Other"
slugs[slugs=="my_recs"] = "Other"

names(parts) <- slugs

# group the others
grouped = aggregate(parts, list(type=names(parts)), sum)

parts <- grouped$x
names(parts) <- paste(grouped$type, "\n", sep="")

parts <- parts / sum(parts) * 100
parts <- sort(parts, decreasing=TRUE)

barplot(add_p_to_names(parts),
    col=colors,
    axes=FALSE,
    #las=2,
    main="Internal purchases distribution")

stops <- axis_stops(max(parts), 6, 10)

axis(2, # right side
     at=stops,
     col=axis_color,
     labels=sprintf("%d%%", stops),
     las=2) # labels perpendicular
