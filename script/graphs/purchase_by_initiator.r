source("common.r")


png(file="purchase_by_initiator.png", width=default_width, height=default_height, res=120)
op <- par(mar=c(4,4,4,2), lty=0)

res <- dbGetQuery(con, "
  select initiator, count(*) from purchases
  inner join purchase_referrers on purchase_referrers.purchase_id = purchases.id
  where status = 1 and initiator > 0 group by initiator
  order by initiator asc
")

initiators <- c("Game", "Bundle", "Widget", "Popup API", "Mobile", "Bundle")
res$initiator <- initiators[res$initiator]

grouped <- aggregate(res$count, by=list(initiator=res$initiator), sum)
counts <- grouped$x
names(counts) <- grouped$initiator
counts <- sort(counts, decreasing=TRUE)
counts <- counts / sum(counts) * 100

barplot(add_p_to_names(counts),
    col=colors,
    axes=FALSE,
    xlab="Page",
    # ylab="Percent",
    main="Distribution of purchase initiators")


stops <- axis_stops(max(counts), 4, 20)
labels <- format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE)
labels <- paste(labels, "%", sep="")

axis(2,
     col=axis_color,
     at=stops,
     labels=labels,
     las=2)
