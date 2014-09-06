#!/usr/bin/env Rscript
source("common.r")

res <- dbGetQuery(con, "
  select date_trunc('month', created_at) sum_month, sum(price) from purchases
  where status = 1
  group by sum_month
  having sum(price) > 1
  order by sum_month asc
")

res$sum_month <- as.Date(res$sum_month)
res$sum <- res$sum / 100
res <- truncate_dates(res, "sum_month")

money_graph(sums=res$sum,
            months=res$sum_month,
            title="Revenue from games bought",
            filename="paid_monthly.png")

money_graph(sums=cumsum(res$sum),
            months=res$sum_month,
            title="Cumulative revenue from games bought",
            filename="paid_cumulative.png")


