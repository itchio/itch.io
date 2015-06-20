source("common.r")

png(file="purchase_referrer_type_rates.png", width=default_width, height=default_height, res=120)
op <- par(mar=c(5,2,4,6), lty=0)

# internal vs external purchases
res <- dbGetQuery(con, "
  select date_trunc('month', created_at) as month,
    count(case when purchase_referrers.type = 1 then true else null end) as internal,
    count(case when purchase_referrers.type = 2 then true else null end) as external,
    count(*) total

    from purchase_referrers
    inner join purchases on purchase_id = purchases.id
    where purchases.status = 1
    group by month
    order by month
")



res$month <- as.Date(res$month)
res <- truncate_dates(res, "month")

res$internal <- res$internal / res$total * 100
res$external <- res$external / res$total * 100

mat <- data.matrix(res[c("internal", "external")])

rownames(mat) <- as.character(res$month)

barplot(t(mat),
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$month)),
        las=2)


stops <- seq(0, 100, 20)
axis(4,
     col=axis_color,
     at=stops,
     labels=paste(stops, "%", sep=""),
     las=2)

par(lty=1)
legend(0, 98, c("Internal", "External"), fill=colors)
title(main="Percentage breakdown of external to internal purchase sources")

