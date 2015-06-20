source("common.r")

png(file="user_upload_and_sell_rate.png", width=default_width, height=default_height_half, res=120)

op <- par(mfrow=c(1,2), mar=c(2,2,2,2))

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
    main="Accounts that have created a public game")

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
    main="Created a game and enabled payments")
