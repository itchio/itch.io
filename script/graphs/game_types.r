source("common.r")

png(file="game_types.png", width=1000, height=700, res=120)
op <- par(mar=c(5,5,4,4), lty=0)

res <- dbGetQuery(con, "
 select type, count(*) from games
 where published and not deleted and classification in (0,2)
 group by type
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


