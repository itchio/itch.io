source("common.r")

png(file="earnings_monthly_by_currency.png",
    width=default_width,
    height=default_height,
    res=120)

# bottom, left, top, right
op <- par(mar=c(5,2,2,6), lty=0)

# by payment provider
res <- dbGetQuery(con, "
  select currency, date_trunc('month', created_at) sum_month, sum(price)
  from purchases
  where status = 1
  group by sum_month, currency
  having sum(price) > 1
  order by sum_month asc
")

res$sum_month <- as.Date(res$sum_month)
res <- truncate_dates(res, "sum_month")

grouped <- tapply(res$sum, list(month=res$sum_month, currency=res$currency), identity)
grouped[is.na(grouped)] <- 0
grouped <- floor(grouped / 100) # remove 0 source column, div cents

money_cap = max(apply(grouped, 1, sum))
grouped = t(grouped)


barplot(grouped,
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$sum_month)),
        las=2)

money_axis(money_cap)

par(lty=1)
legend("topleft", names(grouped[,1]), fill=colors)
title(main="Seller earnings per month by currency")
