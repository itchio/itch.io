#!/usr/bin/env Rscript
source("common.r")

# by type
png(file="game_types.png", width=1000, height=700, res=120)
op <- par(mar=c(5,5,4,4), lty=0)

res <- dbGetQuery(con, "
 select type, count(*) from games
 where published and not deleted group by type
 order by type asc
")

type_names <- c("Download", "Flash", "Unity", "Java", "HTML")
counts <- res$count
names(counts) <- type_names

counts <- sort(counts, decreasing=TRUE)

barplot(add_p_to_names(counts),
    col=colors,
    axes=FALSE,
    xlab="Primary type",
    ylab="Count",
    main="Games by type")

axis(2, # right side
     at=axis_stops(max(counts), 4, 100),
     col=axis_color,
     las=2) # labels perpendicular


par(op)

png(file="game_genres.png", width=1000, height=700, res=120)
op <- par(mar=c(8,5,4,4), lty=0)

res <- dbGetQuery(con, "
 select genre, count(*) from games
 where published and not deleted group by genre
 order by genre asc
")

genre_names <- c("Action", "Platformer", "Shooter", "Adventure", "RPG", "Simulation", "Strategy", "Other", "Puzzle")

counts <- res$count
names(counts) <- genre_names

counts <- sort(counts, decreasing=TRUE)

barplot(add_p_to_names(counts),
        col=colors,
        axes=FALSE,
        las=2,
        ylab="Count",
        main="Games by genre")

stops <- axis_stops(max(counts), 4, 100)

axis(2, # right side
     at=stops,
     col=axis_color,
     las=2) # labels perpendicular

par(op)

png(file="game_platforms.png", width=1000, height=700, res=120)
op <- par(mar=c(5,5,4,4), lty=0)

#
res <- dbGetQuery(con, "
select
  (select count(*) from games where classification = 0 and p_windows and published and not deleted) windows,
  (select count(*) from games where classification = 0 and p_osx and published and not deleted) osx,
  (select count(*) from games where classification = 0 and p_linux and published and not deleted) linux,
  (select count(*) from games where classification = 0 and p_android and published and not deleted) android,
  (select count(*) from games where classification = 0 and published and not deleted) total
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

par(op)

# png(file="earnings.png", width=1000, height=700, res=120)
# op <- par(mar=c(4,4,4,4))
# 
# # plot 90th percentile density graph of game earnings
# res <- dbGetQuery(con, "select amount from game_earnings")
# dollars <- res$amount/100
# max <- quantile(dollars, c(0.90))
# dollars <- dollars[dollars <= max]
# plot(density(dollars), log="x")
# par(op)

