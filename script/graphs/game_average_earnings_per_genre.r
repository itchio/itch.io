source("common.r")

png(file="game_average_earnings_per_genre.png", width=default_width, height=default_height_half, res=120)

genre_names <- c("Action", "Platformer", "Shooter", "Adventure", "RPG", "Simulation", "Strategy", "Other", "Puzzle", "Sports")

# earnings by genre
res <- dbGetQuery(con, "
  with buyable_games as (
    select games.* from games
    inner join user_data on games.user_id = user_data.user_id
    inner join layouts on games.id = layouts.game_id

    where
      published and not deleted and
      (
        (paypal_email is not null or amazon_token is not null or stripe_blob is not null) or
        (payout_mode = 2)
      )
      and coalesce(layouts.data::json->>'disable_payments' != 'true', true)
  )

  select genre, count(*),
  (select sum(amount) from game_earnings where game_earnings.game_id in (select id from buyable_games where buyable_games.genre = games.genre)) amount
  from games
  where id in (select id from buyable_games) and genre is not null
  group by genre
")

rate <- res$amount / res$count
names(rate) <- genre_names[res$genre]

op <- par(lty=0)

rate <- rate / sum(rate)

barplot(rate,
        las=2,
        col=colors,
        main="Average earnings per genre (percent)")

par(op)
