{
  title: "Hosting a co-op bundle"
  share_message: "Round up games and sell them in a bundle with itch.io!"
  amp: true
}

A cooperative, or co-op bundle on *itch.io* lets you team up with other
developers to offer a combination of your games at a single price for any
period of time. Any developer on itch.io can organize and publish a bundle,
and just like games on itch.io, you control everything about how it's run.

> If you're trying to sell a bundle of *just your own games*, you can do that
> with the [Sales][sales] feature on itch.io.

<div class="button_row">
<a href="/developers" class="button fat on_logged_out">Get started with itch.io</a>
<a href="/dashboard/bundles" class="button fat on_logged_in">Create a bundle</a>
<div class="sub">or read on to learn more</div>
</div>

## Getting started

Creating a co-op bundle is easy, just provide: a title, start date, end date,
price, an optional description, and lastly a list of games that will
participate. If you're arranging the bundle with a group of friends, choose one
of you to be the host, and everyone else will be a participant. We'll assume
that you're the host for the rest of this guide.

$image_carousel{
  "/static/images/developers/bundle_games.png",
  height=200
}


Once you've assembled the list of games, the next step is to choose the revenue
distribution. Each developer that is contributing at least one game in the
bundle can receive some portion of the sales in the bundle. By default
everything is split evenly across all the developers involved, but you can
configure the percentage accordingly. Only the host of the bundle can configure
the percentages and the games involved.

$image_carousel{
  "/static/images/developers/bundle_splits.png",
  height=150
}


When you're happy with the game selection and revenue split you're ready to
create the page and start getting it approved by all the participants.

> Once you create the page the game select and split becomes *read-only* so
> make sure you've selected everything correctly.

Once the page is created you'll have to get each participant to approve it by
having them head to the page of the bundle. You'll have to send each of them a
link, they will not be notified by itch.io.

The game list and revenue split become read-only after creation to allow each
participant to approve exactly what the bundle will look like when it becomes
public.

A bundle cannot start until *all the participants* have reviewed and accepted
it. After everyone has approved, you, the host, will receieve an email telling
you it's ready to be made public.

## Price tiers

Just like individual file pricing for game pages, itch.io lets you set
individual game prices for bundle participants. The revenue splits will be
proportionally adjusted based on the number of games that are included at the
purchase price.

On the bundle's review page the host and participants will be able to see each
tier and exactly what the split will be.

## Your bundle in the wild

Once the bundle is marked published and it's between the start and end date,
the bundle will be able to be purchased. The bundle will show up on [itch.io's
bundles page][browse-bundles].

Due to the complexity of distributing purchases across multiple sellers, all
purchases of co-op bundles go through [itch.io's payout system][dashboard-payouts].  Prices are
done in USD and VAT will automatically be added if necessary.

Just like any other purchase on itch.io, an account is not required to purchase
a bundle, but the buyer will be given an option to register and attach their
purchase.

<div class="button_row bottom">
<a href="$url_for{"dashboard.bundles"}" class="button fat on_logged_in">Create a bundle</a>
</div>
