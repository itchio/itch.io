source("common.r")

png(file="game_monthly_created_cumulative_by_paid_status.png", width=1000, height=700, res=120)
op <- par(mar=c(5,2,2,6), lty=0)

res <- dbGetQuery(con, "
 select sum_month, paid_status, sum(count) over (partition by paid_status order by sum_month) from (select
    date_trunc('month', created_at) sum_month, paid_status, count(*)
  from games
  where published and not deleted and classification in (0, 2)
  group by sum_month, paid_status order by sum_month) as foo
  order by sum_month, paid_status
")

res$sum_month <- as.Date(res$sum_month)
res <- truncate_dates(res, "sum_month")

total_games <- max(aggregate(res$sum, by=list(sum_month=res$sum_month), FUN=sum)$x)

grouped <- tapply(res$sum, list(month=res$sum_month, paid_status=res$paid_status), identity)
grouped[is.na(grouped)] <- 0

grouped = t(grouped)

barplot(grouped,
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$sum_month)),
        las=2)

stops <- c(axis_stops(max(res$sum), 4, 1000), total_games)

axis(4,
     col=axis_color,
     at=stops,
     labels=format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE),
     las=2)

par(lty=1)
legend("topleft", c("Free", "Optional", "Paid"), fill=colors)
title(main="Cumulative games by paid status")
par(op)
