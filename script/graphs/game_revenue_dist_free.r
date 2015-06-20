#!/usr/bin/env Rscript
source("common.r")

png(file="game_revenue_dist_free.png", width=default_width, height=default_height, res=120)
op <- par(mar=c(5,2,5,2))

# distributiuon of payments to fee games
res <- dbGetQuery(con, "
  select price from purchases where status = 1 and object_type = 1 and min_price = 0
")

prices <- res$price / 100

boxplot(prices,
        log="x",
        xlab="Price (dollars) log",
        col="#eeeeee",
        main="Distribution of payments to completely free games",
        horizontal=TRUE,
        axes=FALSE)

summary_chunks <- summary(prices)[c(-2, -5)]
summary_chunks <- sprintf("%s: $%0.2f", names(summary_chunks), summary_chunks)
mtext(paste(summary_chunks, collapse=", "))

money_axis(max(prices),
           min=min(prices),
           side=1,
           ticks=8,
           cex=0.8,
           log_scale=TRUE,
           nearest=FALSE)

par(op)
