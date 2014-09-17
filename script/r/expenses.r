#!/usr/bin/env Rscript
source("common.r")

t <- read.csv("account_activities_201407_201409.csv")
rows <- rev(grep("Totals", t$Description))

amounts <- t[, grep("Debits", names(t))][rows]
amounts <- gsub("[^\\d]", "", amounts, perl=TRUE)
amounts <- as.integer(amounts) / 100

dates <- substr(t$Description[rows], 13, 23)
dates <- as.Date(dates, "%b %d, %Y")

totals <- truncate_dates(data.frame(date=dates, amount=amounts))

money_graph(sums=totals$amount,
            months=totals$date,
            nearest=150,
            title="Monthly bill (storage and bandwidth)",
            filename="expenses.png")

money_graph(sums=cumsum(totals$amount + 60),
            months=totals$date,
            nearest=150,
            title="Cumulative money spent on itch.io (storage + servers)",
            filename="expenses_cumulative.png")

