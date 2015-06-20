source("common.r")

png(file="payout_mode_rates.png",
    width=default_width,
    height=default_height_half,
    res=120)

op <- par(mfrow=c(1,2), mar=c(2,2,2,2))


# payout modes
res <- dbGetQuery(con, "
  select payout_mode, count(*) from user_data
  where paypal_email is not null or amazon_token is not null or stripe_blob is not null or payout_mode = 2
  group by payout_mode
")

payout_modes <- res$count

payout_mode_names <- res$payout_mode
payout_mode_names[payout_mode_names == 1] = "direct"
payout_mode_names[payout_mode_names == 2] = "payout"

names(payout_modes) <- payout_mode_names

# purchases since payouts
res <- dbGetQuery(con, "
  select
    count(case when payout_status = 1 then true else null end) as Direct,
    count(case when payout_status != 1 then true else null end) as Payout
  from purchases 
  where status = 1 and created_at > '2015-1-19'
")

purchase_types <- t(res)[, 1]

pie(add_p_to_names(payout_modes),
    col=colors,
    main="Percent of users with payouts enabled")

pie(add_p_to_names(purchase_types),
    col=colors,
    main="Percent of recent purchases for payout")

