#!/usr/bin/env Rscript
source("common.r")

png(file="paid_by_provider.png", width=1000, height=700, res=120)

# bottom, left, top, right
op <- par(mar=c(5,2,2,6), lty=0)

# by payment provider
res <- dbGetQuery(con, "
  select source, date_trunc('month', created_at) sum_month, sum(price)
  from purchases
  where status = 1
  group by sum_month, source
  having sum(price) > 1
  order by sum_month asc
")

res$sum_month <- as.Date(res$sum_month)
res <- truncate_dates(res, "sum_month")

grouped <- tapply(res$sum, list(month=res$sum_month, source=res$source), identity)
grouped[is.na(grouped)] <- 0
grouped <- grouped[,-1] / 100 # remove 0 source column, div cents
money_cap = max(apply(grouped, 1, sum))
grouped = t(grouped)

barplot(grouped,
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$sum_month)),
        las=2)

money_axis(money_cap)

par(lty=1)
legend("topleft", c("PayPal", "Amazon", "Stripe"), fill=colors)
title(main="Revenue per month by provider")

par(op)


png(file="currency.png", width=1000, height=700, res=120)
# bottom, left, top, right
op <- par(mar=c(5,2,2,6), lty=0)

# by payment provider
res <- dbGetQuery(con, "
  select currency, date_trunc('month', created_at) sum_month, sum(price)
  from purchases
  where status = 1
  group by sum_month, currency
  having sum(price) > 1
  order by sum_month asc
")

res$sum_month <- as.Date(res$sum_month)
res <- truncate_dates(res, "sum_month")

grouped <- tapply(res$sum, list(month=res$sum_month, currency=res$currency), identity)
grouped[is.na(grouped)] <- 0
grouped <- grouped / 100 # remove 0 source column, div cents

money_cap = max(apply(grouped, 1, sum))
grouped = t(grouped)


barplot(grouped,
        col=colors,
        axes=FALSE,
        ann=FALSE,
        names=format_months(unique(res$sum_month)),
        las=2)

money_axis(money_cap)

par(lty=1)
legend("topleft", names(grouped[,1]), fill=colors)
title(main="Revenue per month by currency")

par(op)


png(file="linked_providers.png", width=1000, height=700, res=120)

op <- par(mfrow=c(2,2), mar=c(2,2,2,2))

# user has a linked provider
res <- dbGetQuery(con, "
  select count(*) from user_data
    where paypal_email is not null or amazon_token is not null or stripe_blob is not null
  union all
  select count(*) from users
")

parts <- res$count
names(parts) <- c("Yes", "No")

pie(add_p_to_names(parts),
    col=colors,
    main="Users that have linked a payment account")

# users that have linked payment
res <- dbGetQuery(con, "
  select
    count(paypal_email) paypal,
    count(amazon_token) amazon,
    count(stripe_blob) stripe
  from user_data
")

res_total <- dbGetQuery(con, "
  select count(*)
  from user_data
  where paypal_email is not null or amazon_token is not null or stripe_blob is not null
")

parts <- as.matrix(res)[1,] / res_total$ count * 100
parts <- sort(parts, decreasing=TRUE)
names(parts) <- c("PayPal", "Amazon", "Stripe")

op2 <- par(mar=c(3,4,4,2), lty=0)

barplot(parts,
    col=colors,
    axes=FALSE,
    main="Linked providers by type")

stops <- axis_stops(max(parts), 4, 10)

axis(2, # right side
     at=stops,
     col=axis_color,
     labels=sprintf("%d%%", stops),
     las=2) # labels perpendicular

par(op2)

# created a game
res <- dbGetQuery(con, "
  select count(*) from users where exists (select 1 from games where user_id = users.id and published and not deleted limit 1)
  union all
  select count(*) from users
")

parts <- res$count
names(parts) <- c("Yes", "No")

pie(add_p_to_names(parts),
    col=colors,
    main="Users that have created a public game")

# has payment, creatd public game, made sale
res <- dbGetQuery(con, "
  select count(distinct user_id) from games where id in
    (select object_id from purchases where status = 1 and object_type = 1)

  union all

  select count(*) from user_data where paypal_email is not null or amazon_token is not null or stripe_blob is not null and exists (select 1 from games where games.user_id = user_data.user_id and published and not deleted limit 1)
")

parts = res$count
parts[2] = parts[2] - parts[1]
names(parts) <- c("Has sold", "Hasn't sold")

pie(add_p_to_names(parts),
    col=colors,
    main="Linked payment and uploaded ≥ 1 game")

par(op)

png(file="purchase_sources.png", width=1000, height=400, res=120)
op <- par(mfrow=c(1,2), mar=c(2,2,2,2))

# internal vs external purchases
res <- dbGetQuery(con, "
  select type, count(*) from purchase_referrers inner join purchases on purchase_id = purchases.id and purchases.status = 1 group by type order by type asc
")

parts = res$count
names(parts) <- c("Internal", "External")

pie(add_p_to_names(parts),
    col=colors,
    main="Distribution of purchase sources")

res <- dbGetQuery(con, "
  select initiator, count(*) from purchases inner join purchase_referrers on purchase_referrers.purchase_id = purchases.id where status = 1 and purchase_referrers.type = 2 and initiator > 0 group by initiator order by initiator asc
")

parts = res$count
names(parts) <- c("Game's page", "Bundle", "Widget", "Popup")

pie(add_p_to_names(parts),
    col=colors,
    main="External distribution")


par(op)


png(file="internal_sources.png", width=1000, height=700, res=120)
op <- par(mar=c(4,4,4,2), lty=0)

# distribution of internal purchases
res <- dbGetQuery(con, "
  select referrer, count(*) from purchase_referrers inner join purchases on purchase_id = purchases.id and purchases.status = 1 and type = 1 group by referrer
")

parts = res$count
slugs = res$referrer

slugs[slugs=="browse"] = "Browse"
slugs[slugs=="user"] = "Profile"
slugs[slugs=="index"] = "Home"
slugs[slugs=="after_download"] = "Download"
slugs[slugs=="browse_bundles"] = "Bundles"
slugs[slugs=="search"] = "Search"

names(parts) <- slugs
parts <- parts / sum(parts) * 100
parts <- sort(parts, decreasing=TRUE)

barplot(parts,
    col=colors,
    axes=FALSE,
    #las=2,
    main="Internal distribution")

stops <- axis_stops(max(parts), 6, 10)

axis(2, # right side
     at=stops,
     col=axis_color,
     labels=sprintf("%d%%", stops),
     las=2) # labels perpendicular

par(op)


png(file="payments.png", width=1000, height=700, res=120)
op <- par(mfrow=c(2,2), mar=c(2,2,2,2))

# purchases on sale
res <- dbGetQuery(con, "
  select (case when sale_id is not null then 'On sale' else 'Regular price' end) sale_status, count(*)
  from purchases
  where status = 1
  group by sale_status
")

parts <- res$count
names(parts) <- res$sale_status

pie(add_p_to_names(parts),
    col=colors,
    main="Purchases: on sale vs. not")

# gifts
res <- dbGetQuery(con, "
  select (case when gift then 'Gift' else 'Regular' end) gift_status, count(*)
  from purchases
  where status = 1
  group by gift_status
")

parts <- res$count
names(parts) <- res$gift_status

pie(add_to_names(parts, sprintf("%0.2f%%", parts / sum(parts) * 100)),
    col=colors,
    main="Purchases: Gift vs. regular")

# donations
res <- dbGetQuery(con, "
  select (case when donation then 'Donate' else 'Buy' end) donation_status, count(*)
  from purchases
  where status = 1
  group by donation_status
")

parts <- res$count
names(parts) <- res$donation_status

pie(add_to_names(parts, sprintf("%0.2f%%", parts / sum(parts) * 100)),
    col=colors,
    main="Purchases: donation vs. buying")


# sale rates
res <- dbGetQuery(con, "
  select sale_rate
  from purchases
  where status = 1 and sale_id is not null
")

op2 <- par(mar=c(4,4,4,4), lty=0)
sale_rate_purchase_freq <- table(res$sale_rate)

# plot(density(res$sale_rate))
hist(res$sale_rate,
     breaks=20,
     col=colors,
     axes=FALSE,
     xlab="Sale rate (percent)",
     main="Frequency of sale rate by sale purchases")

par(lty=1)

axis(1, col=axis_color)

stops <- axis_stops(par("usr")[4], 4, 100)
axis(2,
     col=axis_color,
     las=2,
     labels=sprintf("%0.f%%", stops/length(res$sale_rate) * 100),
     at=stops)

par(op2)

par(op)

png(file="free_game_payment_dist.png", width=1000, height=700, res=120)
op <- par(mar=c(5,2,5,2))

# distributiuon of payments above minimum
res <- dbGetQuery(con, "
  select price
  from purchases
  inner join games on games.id = purchases.object_id
  where status = 1 and object_type = 1 and games.paid_status = 1 and price < 50000
")

prices <- res$price / 100

boxplot(prices,
        log="x",
        xlab="Price (dollars) log",
        col="#eeeeee",
        main="Distribution of payments to completely free games",
        horizontal=TRUE,
        axes=TRUE)

summary_chunks <- summary(prices)[c(-2, -5)]
summary_chunks <- sprintf("%s: $%0.2f", names(summary_chunks), summary_chunks)
mtext(paste(summary_chunks, collapse=", "))

# money_axis(max(prices), min=min(prices), side=1, ticks=8, log_scale=TRUE, nearest=FALSE)

par(op)

# TODO: percent of payments that are above minimum for paid games

png(file="extra_money_dist.png", width=1000, height=700, res=120)
op <- par(mar=c(5,2,5,2))

# distributiuon of payments above minimum
res <- dbGetQuery(con, "
  select price - games.min_price as price
  from purchases
  inner join games on games.id = purchases.object_id
  where
    status = 1 and
    object_type = 1 and
    price > games.min_price and
    games.min_price > 0
    and price < 50000
")

prices <- res$price / 100

bp <- boxplot(prices,
        xlab="Price (dollars) log",
        log="x",
        col="#eeeeee",
        main="Distribution of extra money given to paid games",
        horizontal=TRUE,
        axes=FALSE)

summary_chunks <- summary(prices)[c(-2, -5)]
summary_chunks <- sprintf("%s: $%0.2f", names(summary_chunks), summary_chunks)
mtext(paste(summary_chunks, collapse=", "))

money_axis(max(prices), min=min(prices), side=1, ticks=6, log_scale=TRUE, nearest=FALSE)

par(op)

