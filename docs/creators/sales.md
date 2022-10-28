{
  title: "Hosting a sale or bundle"
  share_message: "Host your own indie items sale or bundle with itch.io"
  amp: true
}

A sale on **itch.io** lets you offer any combination of your paid items for a
discounted price for any period of time. Anyone can host a sale at any time! If
you have multiple items in your sale, then they can be bought together as a
bundle. You an optionally add a *bundle price*, a custom price for when
everything is bought together.

Sales are restricted to projects from a single account on itch.io, if you need
to host a bundle across many accounts check out our companion feature: [Co-op
bundles][coop_bundles].

> Hosting a sale is a great opportunity to increase sales of your content by
> giving buyers an attractive deal. It also also helps drive word of mouth by
> expanding your audience to customers who wouldn't normally have bought your
> creations.
>
> -- [Gamasutra, How deep discounts really affect your games][gamasales]

<div class="button_row">
<a href="/developers" class="button fat on_logged_out">Get started with itch.io</a>
<a href="/dashboard/sales" class="button fat on_logged_in">Create a sale</a>
<div class="sub">or read on to learn more</div>
</div>


$index

## Getting started

$image_carousel{
  "/static/images/docs/sale-edit.png",
  "/static/images/docs/game-on-sale.png",
  crop = true,
  height = 160,
  width = 280
}

On [your dashboard][dashboard] you'll find a tab for *Sales & bundles* where
you can edit existing or create a new sale. For a new sale you'll minimally
need to provide dates, a title, a rate, and the projects that are affected. On
top of that you'll be able to use our sale customization tools. Each sale gets
its own page on itch.io that you can share.  [Check out some sales currently
going on][browse-sales].

While your projects are on sale, they'll get a badge next to their price tag
when we link to the project. Additionally, if project is part of a bundle, the
bundle will be advertised on your project page while it is active.

### Sale options

Here's a quick overview of some of the basic fields you can provide for your sale:

* **Description** -- This will make up the body of your sale's page. Tell everyone why you're hosting a sale.
* **Duration dates** -- This is the when your sale will become available. Set the start to the future to have a sale that starts later. Set it to now, or a previous time, to make it immediately available. The end date is when the sale will no longer be available. Use your local time zone when entering dates, it's accurate down to a second.
* **Rate** -- The percentage off the price of each item in the sale. The
  discount affects all prices, including the base price, individually priced
  files, and reward prices.
  * **You can set the rate to 100%** if you want your content to be temporarily free.
  * **If you just want to host a bundle** you can set the rate to 0% and provide a bundle price.
* **Projects** -- You can select all the projects affected by the sale. To help with picking a rate, a preview price is shown next to each item. Select at least 1 project, but as many as you like. Selecting more than one item will allow for everything to be bought together as a bundle.
* **Bundle price** -- If you have more than one project selected, you can optionally specify a custom *buy all* price. This will give someone an incentive to buy everything at once if they can save some more. itch.io wills how the percent saved on the sale page to let buyers make the decision that's right for them.

There are even more options covered below.

## Your published sale

<div class="aside_image promo_image"><div class="image_holder" style="background-image: url(http://commondatastorage.googleapis.com/itchio/static/images/promo/sale5.png); width: 274px; height: 259px;"></div></div>

**All the projects in your sale are collected into a single page that's ready to be shared.**

All the projects you chose for the sale are used to create a special sale page.
When you first create a sale it's in draft mode. Use this as an opportunity to
review everything before going back and publishing it.

Once published the page is ready to be shared. If the sale starts in the future
there will be a countdown on the page announcing when it starts.

Once the sale becomes active, all projects affected by it will receive a
special badge announcing the savings when displayed anywhere on itch.io.
Project pages will also announce the discount.

If your sale has one project in it, that item can be bought for the discount
directly on the sale page, or the project page.

If your sale has multiple items then they can be bought together on the sale
page, or individually purchased on the project page.

### Make your sale known

All current sales are listed on the [itch.io sales page][browse-sales], and items on
sales also appear in the item browse pages with the 'on sale' filter, but making
your sale stand out requires a little homework.

Don't hesitate to use Twitter, Facebook, and Reddit to spread the good news. The
[/r/GameDeals][gamedeals] subreddit is a good place to start, but make sure to
check both their [Submitter's guide][gdsubmit] and their [FAQ][gdfaq] to stay
within the rules.

> We allow reasonable self-promotion, but do require you disclose your status.
> You can do this in the comments section of your post, or in the title.
>
> Do stick around to answer questions about your game. If you simply post and run,
> you may not be allowed to post next time.
>
> -- [/r/GameDeals submitter's guide][gdsubmit]

Remember, *a sale can only be successful if people know about it*!

$link_btn{"Read more tips on indie game marketing",
  "http://gamedevelopment.tutsplus.com/articles/promoting-your-indie-game-checklist--gamedev-7560"}


## Sale goals

If your sale or bundle is part of of a campaign to raise money for an event or
cause then you can provide an *earnings goal*. When enabled, the earnings goal
will show on the sale page and on top of your project pages.

It shows how much you'd like to earn, along with how much you've already earned
from the sale. It's a great way to give a buyer a little more incentive to give
extra if they know you're trying to reach a goal.

$image_carousel{
  "/static/images/docs/sale-goal.png",
  caption = "A sale with a goal",
  width = 400
}

> When the sale is over, the goal banner is removed from the project pages, but
> remains on the sale page.

## Sale conditions

It's possible to restrict who has access to the discount provided by your sale
using a *Sale condition*. They currently come in two forms: coupon codes and
ownership requirements.

### Coupon codes

When you provide a coupon code for a sale a new URL on your account will be
created that someone will need to visit to redeem access to the sale.

Additionally, you can set a limit on the maximum number of times the coupon is
redeemed.

Coupon URLs are placed on your subdomain, so they're short and easy to print on
cards for events. For example, if you chose the coupon code **secret-sale**
then the address would look like **http://username.itch.io/secret-sale**.

If you can't think of a name, then click the dice button to randomly generate
one. When randomly generating we exclude characters that are commonly mistaken,
like `1` and `I`.

### Ownership requirement

If you're selling multiple products then you can create a sale that is only
available to those who own one of your existing items. This is called an
*ownership requirement*.

From the sale edit page, select *Add condition* and choose the game that must be
owned for the sale to be active.

In order to make sure people discover your promotion, the buy button is
integrated directly into their download page:

$image_carousel{
  "/static/images/docs/sale-condition.png",
  caption = "A sale only available to those who own something else"
}

## Sale analytics

As a sale host you're given access to a sale analytics page as soon as you
create your sale. From here you can track all the individual purchases that
came through the sale, and earnings over the duration of the sale.

You can find sale analytics by clicking the *Analytics* tab from the sale's
edit page.

[gamasales]: http://www.gamasutra.com/view/news/174587/Steam_sales_How_deep_discounts_really_affect_your_games.php
[gamedeals]: http://reddit.com/r/gamedeals
[gdsubmit]: https://www.reddit.com/r/GameDeals/wiki/submittersguide
[gdfaq]: https://www.reddit.com/r/GameDeals/wiki/faq
[coop_bundles]: /docs/creators/bundles


