source("common.r")

png(file="game_paid_status.png", width=default_width, height=default_height_half, res=120)

op <- par(mfrow=c(1,2), mar=c(2,2,2,2))

# all games gropued by paid status
res <- dbGetQuery(con, "
  select paid_status, count(*) from games
  where published and not deleted and classification in (0, 2)
  group by paid_status
  order by paid_status
")

parts <- res$count
names(parts) <- c("Free", "Optional", "Paid")

pie(add_p_to_names(parts),
    col=colors,
    main="Percent of games that are paid")

# games eligable to get money
res <- dbGetQuery(con, "
  select
    count(*),
    (
      (paypal_email is not null or amazon_token is not null or stripe_blob is not null) or
      (payout_mode = 2)
    )
    and coalesce(layouts.data::json->>'disable_payments' != 'true', true) as accepts_money

  from games

  inner join users on users.id = games.user_id
  inner join user_data on user_data.user_id = games.user_id
  inner join layouts on layouts.game_id = games.id

  where published and not deleted and classification in (0, 2)
  group by accepts_money
")


parts <- c(res$count[res$accepts_money == TRUE], res$count[res$accepts_money == FALSE])
names(parts) <- c("Accepts", "Doesn't accept")

pie(add_p_to_names(parts),
    col=colors,
    main="Percent of games that accept money")

par(op)

