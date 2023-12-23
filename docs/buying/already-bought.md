{
  title: "How to access your purchase"
  share_message: "I already bought a game, how do I find it?"
}

When you buy (or donate to) something on itch.io, you don't need an account.
**When purchasing without an account, your purchase is tied to your email
address.** If you used PayPal, it's your PayPal email address. If you used
a credit card, it's the email address you provided when you made the purchase.

After every purchase, two things happen:

* You're immediately sent an email from `support@itch.io` confirming your transaction.
  This email contains a link to your *purchase page*.
* Your browser will redirect to your purchase page, which includes all downloads.

**If you can't find your purchase, first check your inbox**. Verify that your
spam detector didn't hide it, or you didn't archive it by accident.

If you're unable to find it, then you can request your download to be emailed to
you again by entering your email address:

<form action="$url_for{"recover_games"}" method="post" class="form recover_form">
<input name="csrf_token" type="hidden" class="csrf_input" />
<div class="input_row">
<label>
<div class="label">Email Address</div>
<input type="email" placeholder="you@example.com" name="email" />
</label>
</div>
<button class="button">Resend my download links</button>
</form>

If you're still unable to find your purchase, send us an email via our [support page][support].

## How to download the game or get your activation key

Every purchase or donation comes with a unique *download page* assigned to
your transaction. It's where you'll find the files that come with your
purchase, along with any game keys, like Steam keys.

Here's what it looks like:

<img class="image_holder" src="/static/images/docs/purchase-page-small.png" alt="Purchase page" />

In order to download a file, just click **Download** next to the file you want.
Make sure you're downloading the correct file for your operating system. You'll
see icons next to the files to indicate which operating system they support.

If your purchase comes with a Steam or activation key, then you'll find a *Get
key* button below the list of files. When you're ready to get the key, just
click the button.

If the item you purchased is ever updated, or new keys are added, you'll find
them there. As mentioned above, if you ever lose the link, you can request it to
be resent to your email, but we recommend [creating an account on
itch.io](/register) to take full advantage of the tools we provide for managing
your library.

## Purchasing with an account

If you purchase something while logged in to your **itch.io** account, then that
purchase is automatically linked to that account. You'll need to be logged in
to that account to access your purchase. If you aren't logged in, then you'll
be given the option to link the purchase:

### Link your purchase to an account

If you don't have an account, then after purchasing, you're given the option to
link the purchase to a new account or an existing account.

Click the relevant link on the banner on your purchase page. It looks like
this:

> Want to keep track of all your purchases? Create an account or log in to itch.io to instantly link this purchase.

A linked purchase will be associated with your account's email address. This is
helpful if your PayPal email address isn't where you receive mail. By linking
the purchase, any future notifications about it will go to your account's email
address.

## I bought something that advertised a Steam key, but it's not there

There are a few reasons why a Steam key may not appear. If the developer has
run out of keys for their page, then you will not be able to claim a Steam key.
When this happens, the developer is notified via an automated system to refill
the keys.

For some larger bundles on itch.io, Steam keys are not provided as part of your
purchase. If a Steam key is to be included with a bundle, it will be advertised
directly on the bundle's page and purchase dialog. If it's not there, then no
Steam key is included, even if the individual product purchase includes a Steam
key. This is to prevent placing excessive demand on developers to provide keys
when participating in large charity bundles.

In some circumstances, our fraud detection system may mark a purchase for
additional review and will delay access to any external keys, such as Steam
keys. This is to prevent malicious actors from using stolen credit cards to
drain a game of all their Steam keys for resale on secondary markets (Lame,
I know).

In either case, your best option is to [contact support][support] with the
details of your purchase and we can look it up in our system and get you sorted
out.

