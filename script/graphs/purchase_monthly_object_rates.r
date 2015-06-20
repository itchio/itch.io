source("common.r")

png(file="purchase_monthly_object_rates.png",
    width=default_width,
    height=default_height,
    res=120)
op <- par(mar=c(5,2,4,6), lty=0)

# payout modes
res <- dbGetQuery(con, "
  select
    date_trunc('month', created_at) as month,
    count(case when object_type = 1 then true else null end) as game,
    count(case when object_type = 2 then true else null end) as sale,
    count(case when object_type = 3 then true else null end) as bundle,
    count(*) total

  from purchases
  where status = 1
  group by month
")

res$month <- as.Date(res$month)
res <- truncate_dates(res, "month")

type_cols <- (names(res) != c("month")) & (names(res) != c("total"))
res[,type_cols] <- res[,type_cols] / res[,"total"] * 100

mat <- data.matrix(res[, type_cols])
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
legend(0, 40, c("Game", "Sale bundle", "Co-op bundle"), fill=colors)
title(main="Percentage of purchase objects")



