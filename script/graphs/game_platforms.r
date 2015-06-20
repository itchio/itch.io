source("common.r")

png(file="game_platforms.png", width=1000, height=700, res=120)
op <- par(mar=c(5,5,4,4), lty=0)

#
res <- dbGetQuery(con, "
select
  (select count(*) from games where classification in (0,2) and published and not deleted and p_windows) windows,
  (select count(*) from games where classification in (0,2) and published and not deleted and p_osx) osx,
  (select count(*) from games where classification in (0,2) and published and not deleted and p_linux) linux,
  (select count(*) from games where classification in (0,2) and published and not deleted and p_android) android,
  (select count(*) from games where classification in (0,2) and published and not deleted) total
")

counts <- t(res)[,1]
total <- counts["total"]
counts <- counts[names(counts) != "total"]

barplot(add_to_names(counts, sprintf("%0.f%%", counts / total * 100)),
        axes=FALSE,
        main="Games by platform",
        xlab="Platform",
        ylab="Count",
        col=colors)

axis(2,
     col=axis_color,
     at=axis_stops(max(counts), 4, 100),
     las=2)
