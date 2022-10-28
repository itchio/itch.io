{
  title: "Your first itch.io page"
  share_message: "How to create your first itch.io page, a guide for creators"
  amp: true
}

A Project page on itch.io is how you share what you've created with the world.
A unique part about itch.io that you can control how your project page looks by
changing colors, fonts, and images. In this guide you'll learn how to create
one.

All you need to create a page for your game, comic, soundtrack, assets, etc.
is a free **itch.io** account.

$index

## The dashboard

The itch.io dashboard is a central hub that lets you manage all your pages,
sales, bundles, get both overview and in-depth analytics on views, downloads,
purchases, and handle various payment-related tasks.

$link_btn{icon="stats", "Open your dashboard", $url_for{"dashboard"}}

You can access it at any time by clicking the **Dashboard** link in the top
bar, or the arrow menu next to your avatar and username.

> Since itch.io started as a game marketplace, most of the vocabulary is
> game-centric - as the platform evolves towards other types of content, we'll
> keep adjusting that.

To get started, hit the **Create new game** button.

## Basic information

The create / edit page contains most of the information essential to publishing
a project on itch.io. The title, short description and cover image are used in
game listings all over the site. Here's an example listing:

<div class="kb_showcase"></div>

*The project URL is generated automatically from the title. If you have
a particularly long title, you might want to change it to a shorter URL.*

Cover images should respect a **315:250** aspect ratio. 315x250 is a minimum,
but it's best to include a larger image with the same aspect ratio, like
630x500. Screenshots can be any size, it's recommended to upload **between 3
and 5** of them.

The next step is classification: are you uploading a video game, a tabletop
game, a comic, a book, soundtrack, or even some assets? If no category fits, you
can always choose 'Other' and choose a custom noun lower down the form.

## Content

Then comes the kind of project: itch.io supports HTML5, Flash, Java and Unity
embeds - everything else (including comics, books, soundtracks etc.) is
a downloadable.

$link_btn{"Learn more about HTML5 embeds",
  $url_for{"docs", { splat = "creators/html5" }}}

Uploading is relatively straight-forward - you can upload several files
at the same time, and tag them by platform. Uploads can either be direct,
from Dropbox, or even just links to external websites.

> There is a upload size limit applied on all new itch.io accounts,
> which we can increase to on request. All you have to do is to
> [get in touch][support]!

A typical game release on itch.io includes one .zip file per platform,
and optionally, some bonus content such as artwork, the game's soundtrack,
that can be unlocked when a buyer pays more than a given price.

> Do you want to distribute a free demo? No need to make a separate page!
> Simply upload them to the project page and tick the *This file is a demo
> and can be downloaded for free* checkbox.

**itch.io** supports early access models, pre-orders, and crowdfunding
campaigns via project goals.

$link_btn{"Learn more about pricing",
  $url_for{"docs", { splat = "creators/pricing" }}}

> A project can only be purchased if it has at least one upload available.
>
> For example, if you're *only* selling external keys (which is discouraged, but
> not disallowed), you'll have to add a placeholder upload - maybe a PDF
> file with instructions on how to redeem the external key.

While the files are uploading, you can start filling out the project
description. It will appear directly on the project page. Feel free
to take full advantage of the formatting options given by our editor
such as bold, italic, underline, lists and links.

> To break down your project description into multiple sections like Features,
> Credits, or Links, format your titles by selecting them, then selecting
> **Header 2** under **¶** (Formatting).
>
> Those will appear like other, site-generated sections like 'Download',
> 'Purchase', and 'Also available on'.

Make sure to add contact information to the instructions, so that your
fans know how to reach you, should they need to.

## Tagging

Make sure your project is sorted in the right categories by picking a 'Genre'
and adding up to 10 tags. For more in-depth classification, check out the
**Metadata** tab by editing your project after it's been saved once.

> Not all metadata options necessarily apply to your project if it's not
> a game. Feel free to ignore the ones that don't make sense for what
> you're uploading.
>
> We're still in the process of adjusting the platform for non-game content.
> You can participate to the [existing discussion about table-top
> games][tabletop] or [open a new issue][issue-new] for the type of content you'd like
> **itch.io** to support better.

## Publishing

To preview your project page, hit **Save & view page**. Newly created pages
are private by default to give you a chance to adjust the design of it
until you're satisfied with it.

$link_btn{"Learn how to design pages",
  $url_for{"docs", { splat = "creators/design" }}}

To publish your page, simply edit it again, and set its visibility to 'Public'.

There is a third visibility option, **Public restricted**, lets you publish
your page but prevents anyone from buying or purchasing any files on it. You
should use this for projects that aren't released yet, or old projects that
you'd like to restrict access to.

Unless you've disabled payments entirely, you'll have to choose a payment
option for your project to accept purchases or donations. You can do so
in your [User settings][user-settings], under **Seller settings**.

$link_btn{"Learn more about payment options",
  $url_for{"docs", { splat = "creators/payments" }}}

## Updating your project

Anyone who has purchased your project once owns a copy of it. It shows up
in their purchase list, and they can download any future files you upload
to that same page, except if those uploads have a minimum price higher than
what the buyer paid originally.

Updating your project is simply a matter of uploading the new version, and
deleting the old version.

> You can let buyers know about a major new release of your project by writing
> an e-mail from the *Interact* tab. Additionally, everyone who follows you on
> itch.io will see public updates to all your projects in their feed.
>
> Encourage your fans to follow you on itch.io to make sure they don't
> miss a thing!


$link_btn{"Learn more about interacting with your fans",
  $url_for{"docs", { splat = "creators/interact" }}}

## Extras

You can provide external keys (e.g. Steam keys) with every purchase by editing
your game and navigating to the *Distribute* tab, then *External keys*.

$link_btn{"Learn more about download keys",
  $url_for{"docs", { splat = "creators/interact" }}}

To make your project available at no cost to press outlets and get more
coverage, you can opt your projects into the *itch.io* press system. You
can do so from the [User settings][user-settings] page.

> If you'd rather handle press copies on a case-by-case basis, you can simply
> generate as many download keys as needed from the *Distribute* tab and send
> them directly.

[tabletop]: https://github.com/leafo/itch.io/issues/180
[issue-new]: https://github.com/leafo/itch.io/issues/new

