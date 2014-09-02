#!/usr/bin/env Rscript
source("common.r")

res <- dbGetQuery(con, "
  select date_trunc('month', created_at) sum_month, sum(price) from purchases
  where status = 1
  group by sum_month
  having sum(price) > 1
  order by sum_month asc
")

res$sum_month <- ordered(res$sum_month)
res$sum <- res$sum / 100

months_axis <- function(months) {
  month_ids=unique(c(seq(1, length(months), 3), length(months)))

  axis(1,
       col=axis_color,
       at=month_ids,
       labels=format_months(months[month_ids]))
}

money_graph <- function(title, sums, months, filename="out.png", width=1000, height=700) {
  png(file=filename, width=width, height=height, res=120)

  # bottom, left, top, right
  op <- par(mar=c(2.5, 2, 2, 6), lwd=2)

  plot(sums,
       type="b", # dots and lines
       col=primary_color,
       ann=FALSE, # no labels or title, added below
       axes=FALSE)

  months_axis(months)
  money_axis(max(sums))

  title(main=title)
  par(op)
}

money_graph(sums=res$sum,
            months=res$sum_month,
            title="Revenue from games bought",
            filename="paid_monthly.png")

money_graph(sums=cumsum(res$sum),
            months=res$sum_month,
            title="Cumulative revenue from games bought",
            filename="paid_cumulative.png")


