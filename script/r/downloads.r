#!/usr/bin/env Rscript
source("common.r")

png(file="monthly_downloads.png", width=1000, height=700, res=120)
# bottom, left, top, right
op <- par(mar=c(2.5, 2, 2, 6), lwd=2)


res <- dbGetQuery(con, "
  select date_trunc('month', date) sum_month, sum(count) from downloads_daily
  group by sum_month
  order by sum_month asc
")

res$sum_month <- as.Date(res$sum_month)
res <- truncate_dates(res, "sum_month")


plot(res$sum,
     type="b", # dots and lines
     main="Downloads per month",
     col=primary_color,
     axes=FALSE)

months_axis(res$sum_month)

stops <- axis_stops(max(res$sum), 4, 1000)

axis(4,
     col=axis_color,
     at=stops,
     labels=format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE),
     las=2)

par(op)
