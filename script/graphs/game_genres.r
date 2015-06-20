source("common.r")

png(file="game_genres.png", width=1000, height=700, res=120)
op <- par(mar=c(8,5,4,4), lty=0)

res <- dbGetQuery(con, "
 select genre, count(*) from games
 where published and not deleted group by genre
 order by genre asc
")

genre_names <- c("Action", "Platformer", "Shooter", "Adventure", "RPG", "Simulation", "Strategy", "Other", "Puzzle", "Sports")

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
