source("common.r")

png(file="purchase_by_subreddit.png", width=default_width, height=default_height + 100, res=120)
op <- par(mar=c(7,4,4,1), lty=0)

res <- dbGetQuery(con, "
select lower(purchase_referrers.referrer) as referrer from purchase_referrers inner join purchases on purchases.id = purchase_referrers.purchase_id where purchases.status = 1 and purchase_referrers.type = 2 and purchase_referrers.referrer like '%reddit.com/r/%'
")

referrers <- gsub(".*?/r/([\\w]+).*", "\\1", res$referrer, perl=TRUE)
referrers <- table(referrers)
referrers <- sort(referrers, decreasing=TRUE)
referrers <- referrers / sum(referrers) * 100
referrers <- referrers[seq(20)]

barplot(referrers,
    col=colors,
    las=2,
    axes=FALSE,
    main="Purchases from Reddit by top 20 subreddits")

stops <- axis_stops(max(referrers), 6, 10)

axis(2, # left side
     at=stops,
     labels=sprintf("%0.1f%%", stops),
     col=axis_color,
     las=2) # labels perpendicular


