{
  title: "Sub-product & DLC Redeem URLs"
}

$index

When creating sub-product/DLCs on itch.io you can provide a *redeem URL* to
allow people to claim what they've purchased on your own website. This will
enable you to sell digital goods using itch.io's payment infrastructure for
products that are offered on your own website or service.

## Initiating the purchase

Use your project's purchase URL, like `https://leafo.itch.io/x-moon/purchase`,
and append a product ID to the URL. You can use either `sub_product_id` to
specify the ID shown on your dashboard, or you can use `external_product_id`
to use the *external ID* that you provided when creating the sub-product.


## Using the Redeem URL

You can provide a redeem URL on the bottom of the Sub-products & DLC dashboard
page. When you first set a redeem URL, a secret token is generated for that
project page. **Treat this token as a password, you will use it to verify the
authenticity of requests from itch.io.**

After purchasing a product, the buyer is presented with a button to claim
access to what they bought. They are redirected in their browser with a GET
request to the URL you provided with a `jwt` query parameter appended.

This is a [JWT-encoded](https://jwt.io/) payload object that contains information about
what was bought. Use the *secret token* provided on the Sub-products dashboard
page to verify the integrity of the JWT payload.

## Payload Structure

The structure of the payload after being decoded is:


```json
{
  "purchase_id": 100,
  "sub_product_id": 101,
  "external_id": "my_product",
  "iat": 1554207516,
  "exp": 1554208126
}
```

<table class="nice_table">

<tbody>

<tr>
<td><code>purchase_id</code></td>
<td>The unique ID of the payment on the itch.io server. This can be used to reference the transaction using the itch.io API</td>
</tr>

<tr>
<td><code>sub_product_id</code></td>
<td>The unique ID of the sub-product that was purchased, provided by itch.io</td>
</tr>

<tr>
<td><code>external_id</code> (optional)</td>
<td>The 'External ID' that you provided when configuring your sub-product. We recommend using this to identify the type of thing purchased in your app.</td>
</tr>

<tr>
<td><code>metadata</code> (optional)</td>
<td>Any metadata you provided during the checkout via the `metadata` query parameter on the purchase URL.</td>
</tr>

<tr>
<td><code>iat</code></td>
<td>When the JWT token was issued, Unix timestamp</td>
</tr>

<tr>
<td><code>exp</code></td>
<td>When the JWT token should be treated as expired, Unix timestamp</td>
</tr>

</tbody>

</table>


## Recording a Purchase

When a buyer is redirected to your redeem URL it's your responsibility to credit
their account on your service. Before doing this you should verify the
authenticity of the JWT token using the secret key provided by the itch.io
dashboard. Ignoring this step may lead to people abusing your redeem URL to
obtain digital goods without paying.

As part of crediting the account, you should record the `purchase_id` field in
your database, and reject any attempts to redeem `purchase_id`s that have
already been used. Generally you'll only want to grant access to the product if
someone hasn't already redeemed it.

> **Note:** Be careful about how you record the purchase ID and grant access to
> the product. We recommend using atomic operations in the following order:
>
> 1. Attempt to record `purchase_id`, halt if it already exists (e.g. `insert on conflict ignore`)
> 2. Grant access to product
>
> Failure to follow this pattern may enable malicious users to "double claim"
> products on your service by submitting multiple requests at the same time.

## Dynamically Pulling Products

If you want to dynamically populate your website with the products you've
created on the itch.io dashboard you can use the [itch.io JavaScript
API]($url_for{"docs", { splat = "api/javascript" }}) to pull information about
your project. Using `Itch.getGameData()` you can retrieve a game object including
products in the following format:

```json
{
  "id": 134,
  "title": "Botster Land",
  "price": "$0.00",
  "sale": false,
  "sub_products": [
    {
      "id": 201,
      "name": "100 Gold Coins",
      "price": "$5.00",
    },
    {
      "id": 202,
      "name": "200 Gold Coins",
      "price": "$8.00",
    }
  ]
}
```

> **Note:** Any unpublished or archived products will not be returned.


## Metadata

You can store your own data alongside a purchase on itch.io by providing a
`metadata` parameter to the purchase URL.

Example use-cases of metadata include:

* Associating an account ID from your own service to an itch.io purchase
* Attributing a source where a purchase came from by generating unique URLs for each location
* Storing a product configuration so the correct good can be granted after purchase

The `metadata` parameter must be a signed JWT object to prevent unauthorized
users from tampering with the stored data.

JWT encode an object using the *Redeem URL* secret key described above and pass
it in as the query parameter `metadata` to the purchase URL. You can verify the
metadata by viewing the purchase URL while logged into an account that can edit
that project. A valid `metadata` parameter will show the contents of the
metadata to you above the payment field. An invalid `metadata` will display an
error message describing what the issue is.

The entire length of the encoded metadata payload must be less than 1024
characters. Additionally, any JWT *standard fields* (i.e. `iat`) will be
stripped from the provided object. Fields with the value `null` will be stripped
entirely. Any other regular JSON values are supported.

### Reading the metadata

The metadata is made available to the seller in the following places:

* On the payments section in your dashboard, the details dialog will show any metadata you provided
* The JWT payload sent to your return URL will contain a metadata field with all the metadata you provided

> **Note:** In the future, the itch.io API will also return this data
