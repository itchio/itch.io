source("common.r")

png(file="game_monthly_revenue_extra_rate.png", width=1000, height=400, res=120)
# bottom, left, top, right
op <- par(mar=c(2.5, 2, 2, 6), lwd=2)


res <- dbGetQuery(con, "
  select date_trunc('month',created_at) as month,
  count(case when price > min_price then true else null end)::numeric / count(*)::numeric as p

  from purchases
  where status = 1 and object_type = 1 and min_price is not null and min_price > 0

  group by month
  order by month
")


res$month <- as.Date(res$month)
res$p <- res$p * 100

res <- truncate_dates(res, "month")

plot(res$p,
     type="b", # dots and lines
     main="Percent of payments to paid games giving extra money",
     col=primary_color,
     ylim=c(0,50),
     axes=FALSE)

months_axis(res$month, skip=FALSE)

stops <- axis_stops(50, 5, 10)
labels <- format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE)
labels <- paste(labels, "%", sep="")

axis(4,
     col=axis_color,
     at=stops,
     labels=labels,
     las=2)
