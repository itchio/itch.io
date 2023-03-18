{
  title: "Pricing"
  share_message: 'How "pay what you want" pricing works for content on itch.io'
  amp: true
}

On **itch.io** any item that can accept money is automatically "pay what you
want" or "pay any amount above the minimum", yet there are many more options
to let you set the right pricing for your content.

<div class="button_row">
<a href="/developers" class="button fat on_logged_out">Create an account with itch.io</a>
<a href="/game/new" class="button fat on_logged_in">Create a new game</a>
<div class="sub">or read on to learn more</div>
</div>

$index

## Pay what you want pricing

On itch.io, any price you set is the *minimum price*. Even if you're giving
your content away for free, downloaders will still have the opportunity to send
you money before they download. If you provide a minimum price on your content
then buyers are prompted to pay that amount, or anything above to gain
ownership of the product.

> In concept it sounds like a nice idea and in practice it proves to be a great
> idea.
>
> 30% of all money spent on itch.io is "extra" money that is paid above the
> minimum. The average purchase on itch.io is about 1.50 more than the minimum.
>
> -- [Running an Indie Game Store 2015][indiegamestore2015], itch.io blog

Just by having this feature, **itch.io** is giving developers a significant
boost in profits!

## Pricing options

Before we talk about pricing, we should mention briefly how ownership works:
Whenever someone pays for your project, they become an owner of it. When
granted ownership, they are given a unique [download key][download-keys] that
grants them access to the files uploaded to the page. The pricing options
control what kinds of payments your page is able to accept before granting
ownership.

Keep in mind, by default, if someone downloads your project for free they do
not become an owner! Learn more about this on the [Download keys][download-keys]
page.

When configuring your pricing you have three options to control what kinds of
payments are accepted, if any:

* **$$0 or Donate** -- When trying to download the project, a payment of the *suggested donation* amount is requested. The viewer can click "No thanks, just take me to the downloads" to skip payment and access the files for free. **Note:** If someone pays for a project, they are granted ownership to it. If they skip payment, they do not get ownership, and can only download the files. This is important to be aware of if you decide to convert your project to *Paid* at a later time.
* **Paid** -- Customers will have to pay the *minimum price* or above to obtain ownership of the product. As a seller, you are free to change the price at a later time and all buyers will still retain ownership of the product. **Note:** Individually priced files have different rules for access.
* **No payments** -- All payments are disabled on the project. All files are freely downloadable.

To learn more about ownership, please read our guide on [Download keys][download-keys].

## Purchase tiers through Individually priced files

A good way to encourage someone to spend more on your content is to add
additional content priced above the minimum.

**itch.io** lets you set minimum prices on individual files. For example, if
you're selling a game for $$1 you could offer the option to get access to the
soundtrack when paying $$2 or more.

You can even added priced files when your project is normally free. Encourage a
donation by offering additional content like levels or music. For example, you
could offer a level pack for $$2 with an otherwise free game.

**Individually priced files come with a important distinction** with regards to
ownership: The buyer will only continue to have access to these files if the
price they paid satisfies the minimum price you set on the file. This means
that if you change the individually priced file to be more expensive you may
lock out access to that purchase tier from existing buyers. We strongly
recommend how you intend to price you project in the future before using an
individually priced file. Use individually priced files for quick bonus
content, not set set the price of your content. Use the *minimum price* on your
project to set the price on your product, as this will allow you to change the
price at a later time without affecting ownership.

You can learn more about file access on the [Download keys][download-keys]
guide.

## Sales & bundles

Discounts are another effective way to drive more purchases to your project.
Instead of manipulating the price directly, simply create a sale -- you can
decide when it starts and ends, how deep the discount is, which of your
projects are included, and even set a bundle price.

**itch.io** also lets you team up with other content creators and organize
a bundle of your respective wares entirely from the comfort of your dashboard.

$link_btn{"Learn how to create sales",
  $url_for{"docs", { splat = "creators/sales" }}}

$link_btn{"Learn how to host a bundle",
  $url_for{"docs", { splat = "creators/bundles" }}}

## Early access

You can easily implement an *Early access* model using **itch.io**. Simply
set the release status to **In development** in the project's edit page,
upload the current version of your project, set a minimum price, and
you're all set.

Once someone buys your early access project, they will have access to
all future updates. You can even let them know by e-mail when a new version
is out, or encourage them to follow you on itch.io so that they see
all your activity in their feed.

$link_btn{"Learn about interacting with your fans",
  $url_for{"docs", { splat = "creators/interact" }}}

## Pre-orders

A project is a *pre-order* if all its public uploads have the *This file is a
pre-order placeholder* checkbox ticked. It will allow buyers to purchase before
uploads are made available.

## Project goals

You can set a goal on any [sale][sales]. This enables a banner on the project page,
displaying how much has been collected, and the progress made towards the
current goal.

[indiegamestore2015]: http://itch.io/blog/2/running-an-indie-game-store-2015

