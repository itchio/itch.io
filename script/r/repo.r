#!/usr/bin/env Rscript
source("common.r")


png(file="monthly_commits.png", width=1000, height=700, res=120)
op <- par(mar=c(4,4,4,4))


commits <- system('git log --pretty=format:"%ad" --date=short', intern=TRUE)
commits <- gsub("\\d+$", "1", commits)
commits <- as.Date(commits)


commits <- table(commits)

plot(commits,
     type="b", # dots and lines
     main="Monthly commits",
     xlab="Date",
     ylab="Commit count",
     col=primary_color,
     axes=FALSE)

months_axis(names(commits))


stops <- axis_stops(max(commits), 4, 10)

axis(4,
     col=axis_color,
     at=stops,
     labels=format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE),
     las=2)


mtext(paste("Total:", sum(commits), sep=" "))

par(op)

