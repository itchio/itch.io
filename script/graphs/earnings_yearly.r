source("common.r")

png(file="earnings_yearly.png", width=default_width, height=default_height, res=120)

# bottom, left, top, right
op <- par(mar=c(5,2,2,6), lty=0)

res <- dbGetQuery(con, "
  select date_trunc('year', created_at) sum_year, sum(price) from purchases
  where status = 1
  group by sum_year
  having sum(price) > 1
  order by sum_year asc
")

res$sum <- res$sum / 100
res$sum_year <- as.Date(res$sum_year)
res <- truncate_dates(res, "sum_year")

print(res)

barplot(res$sum,
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$sum_year)),
        las=2)

money_axis(max(res$sum))

title(main="Yearly earnings for games")
