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

There are a few ways a potential buyer can initiate the purchase process. The
most common is a game's page on itch.io. Other options include the [embeddable
widget][widget] and the [JavaScript popup API][api-javascript]. All of these methods end in the
same place on a successful purchase: the game's download page.

In order to have a purchasable game on itch.io you must add a payments account.
You can do so from the [*User settings* page][user-settings-payment].

## The purchase dialog

The purchase dialog is opened buy clicking the *Buy Now* button on the game's
page below the description.

$image_carousel{
  "/static/images/developers/buying/thumbs/dialog.png",
  caption = "itch.io's purchase dialog"
}

The purchase dialog has some noteworthy components. The first thing you might
notice is the input for amount paid. All purchases on itch.io are *pay what you
want above the minimum*. The buyer is free to change this field to an amount
they think is fair. If you've set a default price on the *Edit game* page then
you'll see that filled in automatically.

Below the price input is the file list. The file list is a very effective way
to encourage a buyer to pay more for your game if you have individually priced
content. In the example above there's a soundtrack if the buyer chooses to pay
$6 or above. If the buyer clicks the tier they want then their purchase amount
is automatically increased if necessary to allow access to the file after
purchasing.

$link_btn{"Learn more about pricing",
  $url_for{"docs", { splat = "creators/pricing" }}}

After the file list you'll see the tip buttons. These encourage a buyer to
add a little extra to their purchase with a single click.

If the buyer wants to give the game as a gift they can toggle the gift
checkbox.

Lastly we have the payment buttons. In this example two payment providers are
shown. On your purchase dialogs only the payment providers you've configured
will show up.

What happens next depends on who you select. Here are screenshots of the two
providers:

$image_carousel{
  "/static/images/developers/buying/thumbs/paypal.png",
  "/static/images/developers/buying/thumbs/stripe.png",
  crop = true,
  height = 150,
  width = 200
}


Each path will step the buyer through entering payment information, then
validate that the purchase has been completed. After completing all the
necessary steps the buyer is then redirected to the game's download page on
**itch.io**.

$link_btn{"Learn about payment options & VAT",
  $url_for{"docs", { splat = "creators/payments" }}}

## After the purchase

The download page is the first thing the buyer sees after buying a game. Here
is what it looks like:

$image_carousel{
  "/static/images/developers/buying/thumbs/download_page.png",
  caption = "itch.io's purchase dialog"
}

At the top of the page is a detailed description of the transaction and any
important information regarding how the download page works.

It reads:

> This page has a unique URL for your purchase. You can always re-download the
> latest files from this page. You should have also received an email with a link
> to this page. If you ever lose the URL for this page you can request it to be
> emailed to you from the support page.

As it says, the user's purchase gets them a unique URL where they can download
the most recently uploaded files provided by the developer. If you need to send
out a new version just upload it. You can optionally contact all the purchasers
using the [Send email][4] functionality.

$link_btn{"Learn about interacting with your fans",
  $url_for{"docs", { splat = "creators/interact" }}}

Below that is a list of files. The buyer just needs to click once to initiate a
download immediately.

If your game has any Steam or other keys associated with it, then the key claim
area sits below. External download keys are only distributed on demand when the
buyer clicks the button the first time.

Lastly there are the *Download and install instructions*. This is an optional
but highly recommended field on the game edit page.  Here you can describe
anything the buyer needs to know in order to run your game. You can also
include contact information or links to any resources relevant to the game.
This text is only available to buyers if your game is only available through
purchasing.

## The purchase email

After purchasing a game the buyer will also receive an email containing
information about the purchase and a link to their unique download URL. It
looks like this:

> Thank you for purchasing 'X-Moon'
>
> You purchased 'X-Moon' for $6.00.
>
> If you haven't gotten the game yet, you can find it on the [download page](#).
>
> Your download URL is unique to your purchase. Please do not share it. If you
> ever lose access to the URL you can always re-request it on the itch.io
> [support page][4].
>
> **powered by [itch.io](#)**


## Accounts and purchases

**itch.io** accounts are not necessary to make purchases. A purchase is
associated with an email address. If someone has lost their purchase
information they can [request it to be re-sent to their email address][support] from
the support page.

Creating an account on itch.io is recommended though. It lets a buyer organize
all their purchases in one spot. Purchases are found on the *My collections*
page, and can easily be re-downloaded from there.

## Start selling today!

Hopefully this guide clears up any questions about how purchases on **itch.io**
work. If you have any questions or concerns then don't hesitate to ask from the
[itch.io support page][support].

<div class="button_row bottom">
<a href="$url_for{"developers"}" class="button fat on_logged_out">Create an account to start selling</a>
<a href="$url_for{"new_game"}" class="button fat on_logged_in">Start selling a game</a>
</div>

[4]: http://blog.itch.io/post/74954872362/you-can-now-email-your-buyers-from-itch-io

