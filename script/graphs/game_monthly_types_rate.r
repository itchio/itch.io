source("common.r")

png(file="game_monthly_type_rates.png", width=default_width, height=default_height, res=120)
op <- par(mar=c(5,2,4,6), lty=0)

res <- dbGetQuery(con, "
 select
   date_trunc('month', created_at) as month,
   count(case when type = 1 then true else null end) as downloadable,
   count(case when type = 2 then true else null end) as flash,
   count(case when type = 3 then true else null end) as unity,
   count(case when type = 4 then true else null end) as java,
   count(case when type = 5 then true else null end) as html,
   count(*) total
   from games

 where published and not deleted and classification in (0,2)
 group by month
 order by month asc
")


res$month <- as.Date(res$month)
res <- truncate_dates(res, "month")

type_cols <- (names(res) != c("month")) & (names(res) != c("total"))
res[,type_cols] <- res[,type_cols] / res[,"total"] * 100

percents <- res[, names(res) != "total"]

mat <- data.matrix(percents[, names(percents) != "month"])
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
legend(0, 40, c("Downloadable", "Flash", "Unity", "Java", "HTML"), fill=colors)
title(main="Percentage per month of game types")


