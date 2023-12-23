{
  title: "How buying works"
  share_message: "Buying a game on itch.io, a guide for developers"
  amp: true
}

This guide is for sellers on **itch.io** who want to know what buyers will see
as they go through each step of the purchase process. **itch.io** is an indie
game marketplace that lets anyone sell their game instantly. If you don't have
an account or a game for sale yet you can create one now:

<div class="button_row">
<a href="$url_for{"developers"}" class="button fat on_logged_out">Create an account to start selling</a>
<a href="$url_for{"new_game"}" class="button fat on_logged_in">Start selling a game</a>
<div class="sub">or continue reading</div>
</div>

$index

There are several ways for a potential buyer to initiate the purchase process.
The most common method is through a game's page on itch.io. Other options
include the [embeddable widget][widget] and the [JavaScript popup
API][api-javascript]. Regardless of the method used, all successful purchases
lead to the game's download page.

To sell a game on itch.io, you must add a payments account. This can be done
from the [*User Settings* page][user-settings-payment].

## The purchase dialog

The purchase dialog can be opened by clicking the *Buy Now* button located on
the itch.io project page. If the game is priced at $$0 or listed as Pay What You
Want, this dialog will appear when you click the *Download Now* button.

$image_carousel{
  "/static/images/developers/buying/thumbs/dialog.png",
  caption = "itch.io's purchase dialog"
}

The purchase dialog contains several noteworthy components. The first thing you
might notice is the input for the amount paid. All purchases on itch.io operate
on a *pay what you want above the minimum* basis. The buyer is free to modify
this field to an amount they deem fair. If you've set a default price on the
*Edit game* page, this will be automatically filled in.

Located below the price input, you'll find the file list. If your project has
any individually priced files, they can be selected from this list to
automatically increase the buyer's payment amount. For instance, in the example
image above, a soundtrack is available if the buyer opts to pay $$6 or more.
Clicking this will set their purchase price to $$6 if the amount they've
previously decided on is lower.

$link_btn{"Learn more about pricing",
  $url_for{"docs", { splat = "creators/pricing" }}}

After the file list, you'll see the tip buttons. These encourage buyers to add
a little extra to their purchase with a single click.

Additionally, if the buyer wants to give the project as a gift, they can toggle
the gift checkbox.

Lastly, we have the payment buttons. These can vary depending on the methods
configured by the seller's account, and can provide multiple options for the
buyer. Depending on the option chosen, the potential buyer will be taken to the
checkout page of the respective method. (For example, with PayPal, the buyer
will be taken to PayPal.com to complete their payment.)

Upon successfully completing the payment, the buyer is either shown the form to
send a gift if they selected the gift option, or they are redirected to their
access page for their purchase.

$link_btn{"Learn about payment options & VAT",
  $url_for{"docs", { splat = "creators/payments" }}}

## Accessing the purchase

A successful payment will generate a ["Download Key"][download-keys], which is a unique URL that
grants access to the product that has been paid for. Here's what it might look
like:

$image_carousel{
  {
    src = "/static/images/developers/buying/thumbs/download_page.png",
    href = "/static/images/developers/buying/download_page.png"
  },
  caption = "itch.io's purchase dialog"
}

At the top of the page, there is a detailed description of the transaction and
any important information regarding how the download page functions.

It reads:

> This page has a unique URL for your purchase. You can always re-download the
> latest files from this page. You should have also received an email with a link
> to this page. If you ever lose the URL for this page you can request it to be
> emailed to you from the support page.

As a seller, you can publish new files for your project and they will
automatically be made available on the Download Key page. If you need to notify
your buyers of a critical or major update, you can use the [Send email][4]
functionality.

$link_btn{"Learn about interacting with your fans",
  $url_for{"docs", { splat = "creators/interact" }}}


The download key page can include the following components:

* An area to download any files that have been uploaded
* Links to the project's community page and any other links you have added to your page
* An area to generate an invoice for the purchase via the More dropdown menu
* If the project provides any External Keys, such as a Steam Key, then there is a button to claim access to a key
* *Download and install instructions* that have been provided on the project edit page are also displayed. If there are specific instructions on how to run or use the project, please provide them.

Additionally, if the buyer doesn't have an itch.io account, they are given the
option to link their purchase to an account. An itch.io account is not
necessary to purchase something, but it is recommended.

## The purchase email

After purchasing a game, the buyer will also receive an email receipt
containing instructions on how to access their purchase.

It might look something like this:

> Thank you for purchasing 'X-Moon'
>
> You purchased 'X-Moon' for $$6.00.
>
> If you haven't gotten the game yet, you can find it on the [download page](#).
>
> Your download URL is unique to your purchase. Please do not share it. If you
> ever lose access to the URL you can always re-request it on the itch.io
> [support page][support].
>
> **powered by [itch.io](#)**


## Accounts and Purchases

An **itch.io** account is not required to make purchases. Each purchase is
associated with an email address. If a user has misplaced their purchase
information, they can [request it to be re-sent to their email
address][support] via the support page.

However, we highly recommend creating an account on itch.io. This allows a
buyer to organize all their purchases in one place, and access their files in
the [itch.io app][app]. Purchases can be found on the *My Collections* page and
can be easily re-downloaded from there.

## Start selling today!

Hopefully this guide clears up any questions about how purchases on **itch.io**
work. If you have any questions or concerns then don't hesitate to ask from the
[itch.io support page][support].

<div class="button_row bottom">
<a href="$url_for{"developers"}" class="button fat on_logged_out">Create an account to start selling</a>
<a href="$url_for{"new_game"}" class="button fat on_logged_in">Start selling a game</a>
</div>

[4]: http://blog.itch.io/post/74954872362/you-can-now-email-your-buyers-from-itch-io

