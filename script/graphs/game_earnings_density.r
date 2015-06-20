source("common.r")

# I have no idea what this graph is, but might be useful for later

png(file="game_earnings_density.png", width=1000, height=700, res=120)
op <- par(mar=c(4,4,4,4))

# plot 90th percentile density graph of game earnings
res <- dbGetQuery(con, "select amount from game_earnings")
dollars <- res$amount/100
max <- quantile(dollars, c(0.90))
dollars <- dollars[dollars <= max]
plot(density(dollars), log="x")
par(op)

