{
  title: "Accepting Payments and Getting Paid"
  share_message: "How creators accept payments and get paid via itch.io"
  amp: true
}

Our guide, [How buying works][how-buying-works], explained the process buyers
go through when purchasing something on itch.io. This guide explains how
creators can accept payments and get paid.

$index

## How itch.io handles payments

itch.io works with third-party payment gateways to handle all financial
transactions. The following payment providers are available:

* [PayPal][paypal] -- Pay with PayPal balance, card, or bank
* [Stripe][stripe] -- Pay with credit or debit card

**itch.io** never collects any payment information on its servers. Buyers are
directed to the payment gateways where they can securely enter their purchase
information.

### PayPal

When using PayPal, the buyer will be redirected to the PayPal web page where they
can securely pay, then back to **itch.io** with a secret download access link.

For most PayPal transactions, a fee of $$0.30 + 2.9% is applied per
transaction. Depending on your account here may be additional fees for currency
conversion when receiving funds into your account.

$link_btn{"Read more about PayPal fees",
  "https://www.paypal.com/webapps/mpp/merchant-fees"}

### Stripe

When using Stripe the buyer will be redirected to a checkout page on
**itch.io** where they can enter their credit card. **itch.io** never sees or
stores credit card numbers. Payment information is sent security to Stripe
through the buyer's browser session.

For most credit card transactions, Stripe takes a fee of $$0.30 + 2.9%.

$link_btn{"Read more about Stripe's pricing",
  "https://stripe.com/us/pricing"}

## Open Revenue Sharing

itch.io is a marketplace for creators of all kind. It's our goal to support
creators by giving them the tools to sell and distribute their work. As a way
of saying thanks to those using itch.io, we utilize an **Open Revenue Sharing**
model. ([Read about the launch][ors])

You (the seller) can decide what percentage of your sales will go towards
itch.io, from 0% to 100%. All money collected is used directly for running
servers, paying for bandwidth, and supporting the development of new
functionality. You can read more about itch.io's mission on our [About
page][about].


<div class="image_caption_wrapper">
<img class="image_holder" width=600 src="/static/images/docs/revenue-share.png" alt="itch.io's Open Revenue Share slider, located in account settings" />
<div class="image_caption"><strong>itch.io</strong>'s Open Revenue Share slider, located in account settings</div>
</div>

Here's an example of how Open Revenue Sharing is calculated for a transaction.
For the sake of simplicity, we'll assume the default rate, 10%, and that we're
working in USD.

First, itch.io will take the percentage configured on your account's revenue
sharing settings. In this example, the default would be 10% of $$10. Next, the
payment provider fee is subtracted (Generally $$0.30 + 2.9% of the total
price).

          --itch.io--   ----PayPal/Stripe----
    $10 - ($10 * 0.1) - $0.30 - ($10 * 0.029) = $8.41

> You can choose what percentage of your sales to give to support the
> development and operational costs of **itch.io** in your [Seller
> Settings][user-settings-payment].

[ors]: https://itch.io/updates/introducing-open-revenue-sharing


## Payment Processor Fees

All payment processors we work with (PayPal, Stripe) have a *per-transaction*
fee. Regardless of whether you're receiving payouts from us or using our
*direct* payments system, this fee is applied per transaction at the time or
purchase.

> On the dashboard we report gross revenue, which is the total amount paid by
> buyers, before any fees have been subtracted. Because fees can fluctuate
> slightly, your final net earnings will be calculated when you request a
> payout when using our Payouts system.

A payment processor's fee is typically comprised of a fixed amount around 30
cents and a percentage amount around 2.9%. Due to the fixed fee, the total
percentage of the entire transaction the fee represents changes depending on
the price of your product.

For example 30 cents of a 1 dollar payment is 30%, 30 cents of a 2 dollar
payment is 15%, etc. **You can avoid high payment processor fees by selling
your work for a higher price.**

For this reason we recommend people minimally sell their work at $$2 to avoid
giving up a large percentage of their earnings to the payment processor.

## Payment modes

itch.io supports two different payout modes. Your choice affects what payment
options are available to buyers, who is listed as the merchant of record,
taxes, how chargebacks are handled, and more.

Here's a table of the differences, refer to the table below for more detailed
explanations.

<table class="nice_table">

<thead>
<tr>
<td></td>
<td>Direct to you</td>
<td>Collected by itch.io (Payouts)</td>
</tr>
</thead>

<tbody>

<tr>
<td><strong>Setup</strong></td>
<td>Manually connect to each payment provider. Provide tax information to each payment provider</td>
<td>No manual connection. Complete one tax interview on itch.io and accept seller terms</td>
</tr>

<tr>
<td><strong>Payment methods for buyers</strong></td>
<td>You have to manually setup each payment provider you want to support</td>
<td>You instantly get every supported method. New ones added will automatically be available</td>
</tr>

<tr>
<td><strong>Currency</strong></td>
<td>You manually select a currency</td>
<td>itch.io handles all transactions as USD. You get paid in USD. We handle automatic currency conversion</td>
</tr>

<tr>
<td><strong>Getting paid</strong></td>
<td>Each transaction goes directly into the balance of the respective payment provider you've connected</td>
<td>itch.io collects payments, you request a payout at a later time. You can be paid via PayPal or Payoneer</td>
</tr>

<tr>
<td><strong>Merchant of Record</strong></td>
<td>You are the Merchant of Record</td>
<td>itch.io is the Merchant of Record</td>
</tr>

<tr>
<td><strong>Chargebacks</strong></td>
<td>You are liable for chargebacks</td>
<td>itch.io is liable for chargebacks</td>
</tr>

<tr>
<td><strong>Fraud detection</strong></td>
<td>itch.io provides fraud detection</td>
<td>itch.io provides fraud detection</td>
</tr>

<tr>
<td><strong>VAT</strong></td>
<td>You are responsible for collection and remittance. You can enable automatic VAT collection from itch.io</td>
<td>VAT is always automatically collected. itch.io is responsible for remittance</td>
</tr>

<tr>
<td><strong>Tax forms</strong></td>
<td>Each payment provider will generate tax forms for you</td>
<td>itch.io will generate tax forms for you</td>
</tr>

<tr>
<td><strong>Split transactions</strong></td>
<td>Your account only supports transactions that go fully to your account. No support for co-op bundles</td>
<td>You can participant in any promotions that split payments across multiple sellers, like <a href="/docs/creators/bundles">co-op bundles</a></td>
</tr>

<tr>
<td><strong>Transaction eligibility</strong></td>
<td>You may need to configure your payment provider account to accept payments from certain regions, otherwise they may be blocked</td>
<td>itch.io's payment provider account is configured to accept all payments</td>
</tr>

<tr>
<td><strong>Refunds</strong></td>
<td>itch.io will refund payments on your behalf when necessary</td>
<td>itch.io will refund payments on your behalf when necessary</td>
</tr>

</tbody>

</table>

### Direct to you

In order to sell with **Direct to you**, you must manually connect every
payment provider you wish to make available to your buyers. Your payment
provider account will be the *Merchant of Record,* meaning that transactions
will list your name (or company name).

You will need to provide your tax identity information directly to each payment
provider you connect with. They will report your income and file tax forms at
the end of the year.

Each individual transaction will appear on your account as they happen. You
will have access to your earnings as soon as the respective payment provider
makes it available to you.

In this mode you are responsible for collecting and remitting VAT tax. You can
enable tax collection from your payout mode selection screen on your account
settings.

The following payment processors are available for "Direct to you":

* **PayPal** -- Note: in some regions a business PayPal account may be required
* **Stripe**

### Collected by itch.io & paid later (aka itch.io Payouts)

Selling with the **itch.io Payouts system** requires you to provide your tax
identity information directly to itch.io. We use a third-party service to
collect and securely store your information. They will also mail your tax forms
at the end of the year.

With this model, itch.io is the *Merchant of record*. Payments will go
directly to itch.io, and you are responsible for claiming your earnings at a
later time by requesting a *Payout*. 

A transaction must be at least 7 days old before the earnings are eligible for
payout.

> That 7-day window allows us to deal with fraud and various other problems that
> can arise regarding payments.

itch.io is not a bank, you should request your earnings from itch.io in a
timely manner. If you don't withdraw earnings from your account older than a
year, we may charge a maintenance fee proportional to any unclaimed money older
than a year left in your account. ([Read more in our Terms of
Service](/docs/legal/terms#10-unclaimed-earnings-in-publisher-accounts))

Once a payout is initiated, it is reviewed and paid at our earliest
convenience. We human review all payouts after they are initiated, especially
for first time sellers. Your patience is appreciated.

Payouts are paid to you via either PayPal or Payoneer. These transfers may
include additional processing fees depending on what kind of account is
receiving the payment. Generally, recipients outside of the United States will
have the smallest fee with Payoneer.


## VAT support

European VAT laws dictate that any business, when selling to customers
currently located in the European Union, must collect value-added tax
(VAT) according to the current rate of the country the seller is
buying from.

> Note that EU-VAT also applies to non-EU business, and that it's
> the country one is *buying from*, not *living in*, that is taken
> into account.

To help you comply with this legislation, itch.io allows you to:

* Collect billing addresses whenever someone purchases one of your items from an EU country.
* Calculate the VAT rate to collect based on the buyer's location, and optionally bill it on top of the base item price (exclusive). This option can be disabled to have inclusive VAT pricing.

With the *Direct to you* model, you are responsible for registering at a VAT
MOSS and paying the tax collected. You can export all the necessary information
about your transactions for your quarterly reporting from your dashboard.
itch.io automatically collects address and geo-location from IP address for any
buyers when necessary.

When using the *Collected by itch.io* model however, both those features are
enabled by default, and **itch.io** pays tax quarterly to our VAT MOSS account
located in Ireland. No work is required from you.

## Currencies

The *Collected by itch.io* model only supports accepting USD.

For *Direct payments*, you can select the currency you with to sell in. For
PayPal users, it's important to ensure your PayPal account is configured to
accept the currency you selected, otherwise your payments may get blocked.

When using **PayPal**, the following currencies are supported:

 * **USD** -- U.S. Dollar
 * **CAD** -- Canadian Dollar
 * **GBP** -- British Pound
 * **EUR** -- Euro
 * **JPY** -- Japanese Yen
 * **AUD** -- Australian Dollar

When using **Stripe**, the following countries and currencies are available:

 * **United States** -- USD
 * **Canada** -- CAD, USD
 * **Ireland** -- EUR, GBP, USD
 * **United Kingdom** -- EUR, GBP, USD

> If you payment provider account is for a specific currency, you must set the
> same currency in your [Seller settings][user-settings-payment] page;
> otherwise, you may be unable to receive payments.

[paypal]: http://www.paypal.com
[stripe]: http://stripe.com


## Tax Interview

If you are using itch.io's **Payouts** system then you must complete a **Tax
Interview** before your account is eligible to collect any earnings through a
payout. You can find instructions on how to complete the Tax Interview during
the seller onboarding when setting up your account, or by navigating to the
*Tax Information* tab on your account settings page.

Before your account can collect any payments you should complete the tax
interview. After completing the tax interview your information will be on file
and your account will ready to accept payments. (During this time your
Validation Status may be shown as pending, but you can still start collecting
payments)

Before your account is eligible to receive earnings through a payout, your tax
information must be validated. Validation will take place after you open your
first payout request. This means you can start selling before your information
is validated, but you can not collect any earnings until validation succeeds.
Generally validation happens instantly, but in some cases it may take longer to
verify the information you have provided. If the validation has failed, then it
will be reported on the *Tax Information* page.  **We are unable to process any
payouts unless your tax information validates**.  You can either retake the tax
interview or [contact support][support] for more assistance

**During the tax interview, you must provide a Tax Identification Number (eg.
Social Security Number, EIN, ITIN, local Tax Number, etc.).** If you do not
provide a valid Tax Identification Number then your account will be subject to
the default 30% withholding rate, even if you are located in the United States
or in a country that has a tax treaty with the United States.


## Tax Withholding

> This section is only relevant to sellers who are doing business as an entity located outside of the United States

Since itch.io is a U.S. company, funds we send to foreign entities are subject
to [a withholding
tax](https://www.irs.gov/individuals/international-taxpayers/nra-withholding).
This only applies to sellers using itch.io's **Collected by itch.io
(Payouts)**. Using Direct Payments you may be subject to the same tax but it
is handled directly by the payment providers and not itch.io

The default tax rate is 30% but you may be eligible for a reduced rate if you
operate in [a country that has a tax treaty with the United
States](https://www.irs.gov/businesses/international-businesses/united-states-income-tax-treaties-a-to-z),
and you provide a Tax Identification Number.

* For some countries, you may be able to to enter the tax identification number you have already been issued by your government
* Otherwise, you may be able to apply for a tax number from the United States
  * [Learn how to apply for an EIN](https://www.irs.gov/businesses/small-businesses-self-employed/how-to-apply-for-an-ein) -- Simpler to get, but may not be available
  * [Learn how to apply for an ITIN](https://www.irs.gov/individuals/how-do-i-apply-for-an-itin)

After you complete the tax interview you'll be shown your withholding rate on
your seller account settings page. If you don't agree with what is displayed,
you'll have to retake the interview. You can [contact support][support] to get
help with updating your tax information.

> Although it may be possible to complete the tax interview without a tax
> identification number, **you will be assigned the default withholding rate of
> 30% even if your country is eligible for a reduced rate**. Please take the
> time to fill out the tax interview as much as you can. If you are unsure,
> then we recommending contacting a local financial professional.

## Account Adjustments

This only applies to sellers using itch.io's **Collected by itch.io
(Payouts)**. If itch.io needs to debit your account for previous activity then
an adjustment will be applied the next time you request a payout. Any
adjustments will be shown after you create a payout under the *Adjustments
summary* section. If you do not see this section then there are no adjustments.

If the sum of your adjustments is larger than the sum of your revenue to be
claimed, then you will not be able to initiate a payout. Once your balance is
above your debits you can create a payout.

Here's a list of adjustments you may see:

* **Refunds** -- If a payment to your account is refunded after the funds for it have been paid out then we'll deduct that amount on a future payout. Payments refunded in a pending payout will be subtracted before the payment is delivered, and not be added as an adjustment.
* **Chargebacks** -- A chargeback is a fee imposed by a payment processor when a buyer opens a dispute with their bank or card company. Chargebacks are commonly associated with fraud, but sometimes they can happen because of the types of buyers a project has. If we notice a high rate of disputes on your account, or disputes from customers, then the chargeback fees may be applied to your account.
* **Payout Fees** -- When collecting a payout, the processor may charge a fee for the money transfer. PayPal is the most common payout method. [Learn more about PayPal payout fees](https://www.paypal.com/us/webapps/mpp/merchant-fees#paypal-payouts). Generally, requesting payouts more frequently will cause you to lose more to fees. We recommend collecting payouts about once a month. **Note:** storing money on your itch.io account over a year can result in a charge from itch.io, see [Unclaimed Earnings In Publisher Accounts](https://itch.io/docs/legal/terms#10-unclaimed-earnings-in-publisher-accounts).
* **Tax Identity** -- Upon completing your tax interview we used a third-party service to verify the identity you provided. This is a federal requirement. A flat fee of $$3.00 will be applied to your account once.

> **Why does itch.io pass fees on to me?** itch.io utilizes "[Open Revenue
> Sharing](https://itch.io/docs/general/about)," a system where
> sellers can decide what percentage of their revenue is shared with the
> platform. Because we are not guaranteed an amount from sellers through the
> sales of their goods, we pass any operating costs directly onto the seller.
> This includes payment processor fees, and any of the fees listed above.
