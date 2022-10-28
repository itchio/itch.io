{
  title: "Serverside API reference"
}

The itch.io server-side API lets you query the information about your games by
making HTTP requests to API URLs.

$index

## Authentication

All API endpoints require authentication.

There are two types of credentials you can use:

  * API keys are long-lasting credentials that can be revoked by users
  * JWT tokens are short-lived, expiring credentials

They both provide access to whatever scope they have, but they're added
to the HTTP request in different places.

### API keys

You can generate API keys for your own account from the [API keys](/api-keys)
page. (You'll need an [itch.io account][developers] account if you don't
already have one.)

If you want to make requests on behalf of other itch.io users, you can
register an [OAuth application](/docs/api/oauth) and have them grant permissions
to your app.

To use an API key to authenticate an API request, simply replace `KEY` in the
following API endpoints with the string `key`, and pass the `Authorization` header:

```text
GET /api/1/key/...
Authorization: Bearer YOUR_API_KEY
```

Alternatively, you can just replace `KEY` with your API key:

```text
GET /api/1/YOUR_API_KEY/...
```

### JWT tokens

JWT tokens can be passed to a game when it specifies a list of
requested API scopes. Read the [app manifest](/docs/itch/integrating/api/)
documentation for more information.

To use a JWT token to authenticate an API request, replace `KEY` in the
following endpoints with `jwt`, and pass the `Authorization` header:

```text
GET /api/1/jwt/...
Authorization: Bearer YOUR_JWT_TOKEN
```

## Scopes

Credentials (whether they're API keys or JWT tokens) usually have a limited scope,
which means they'll give access to some endpoints but not others.

In the API reference below, endpoints are listed with: HTTP method (in blue), scope (in green), and template URL.

Having access to a scope gives access to all its subscopes. For example,
`profile` gives access to `profile:me`, but `game:view:purchases` does not
give access to `game:view`.

> API keys that you generate from your [user settings](/api-keys)
> are unscoped - they have access to all endpoints.

## Passing parameters

`GET` requests that take parameters should insert them in the query string

`POST` requests can either take parameters as a form-ended body, or in the
query string.

## Response format

API responses are JSON-encoded, and use `snake_case`.

Errors are signaled by the presence of an `errors` field (an array of strings)
in the response body.

Dates are in the `YYYY-MM-DD HH:MM:ss` format, for example: `2017-10-19 13:35:06`

## Reference

<div id="credentials-info"></div>
### <span class="get_label"></span> `https://itch.io/api/1/KEY/credentials/info`

Returns information on the set of credentials used to make this API
request. In particular, the response includes the list of scopes the
credentials give access to, and if it's a JWT token, the expiration date

Takes no parameters.

Sample response for JWT token:

```json
{
  "scopes": [ "profile:me" ],
  "expires_at": "2017-10-19 13:35:06"
}
```

Sample response for API key:

```json
{
  "scopes": [ "profile:me", "profile:games" ]
}
```

<div id="me"></div>
### <span class="get_label"></span> <span class="scope_label">profile:me</span> `https://itch.io/api/1/KEY/me`

Fetches public profile data for the user to which the API key belongs.

Takes no parameters.

Sample response:

```json
{
  "user": {
    "username": "fasterthanlime",
    "gamer": true,
    "display_name": "Amos",
    "cover_url": "https://img.itch.zone/aW1hZ2UyL3VzZXIvMjk3ODkvNjkwOTAxLnBuZw==/100x100%23/JkrN%2Bv.png",
    "url": "https://fasterthanlime.itch.io",
    "press_user": true,
    "developer": true,
    "id": 29789
  }
}
```

<div id="my-games"></div>
### <span class="get_label"></span> <span class="scope_label">profile:games</span> `https://itch.io/api/1/KEY/my-games`

Fetches data about all the games you've uploaded or have edit access to.

Takes no additional parameters.

Sample response:

```json
{
   "games":[
      {
         "cover_url":"http:\/\/img.itch.io\/aW1hZ2UvMy8xODM3LnBuZw==\/315x250%23\/y2uYQI.png",
         "created_at":"2013-03-03 23:02:14",
         "downloads_count":109,
         "id":3,
         "min_price":0,
         "p_android":false,
         "p_linux":true,
         "p_osx":true,
         "p_windows":true,
         "published":true,
         "published_at":"2013-03-03 23:02:14",
         "purchases_count":4,
         "short_text":"Humans have been colonizing planets. It's time to stop them!",
         "title":"X-Moon",
         "type":"default",
         "url":"http:\/\/leafo.itch.io\/x-moon",
         "views_count":2682,
         "earnings":[
            {
               "currency":"USD",
               "amount_formatted":"$50.47",
               "amount":5047
            }
         ]
      }
   ]
}
```

<div id="download_keys"></div>
### <span class="get_label"></span> <span class="scope_label">game:view:purchases</span> `https://itch.io/api/1/KEY/game/GAME_ID/download_keys`

Checks if a download key exists for game and returns it.

`GAME_ID` can be retrieved from the `my-games` API call above.

Requires *either* of the following parameter:

  * **`download_key`**: The download key to look up,
  * or **`user_id`**: The user identifier to look up download keys for.
  * or **`email`**: The e-mail to look up download keys for.

You can use this API call to verify that someone has a valid download key to
download the game.

The download key can be extracted from a buyer's download URL. For example:

`http://leafo.itch.io/x-moon/download/YWKse5jeAeuZ8w3a5qO2b2PId1sChw2B9b637w6z`

The download key would be `YWKse5jeAeuZ8w3a5qO2b2PId1sChw2B9b637w6z`.

Passing `user_id` instead is useful in scenarios where you have authenticated
a user via an [app manifest](https://itch.io/docs/itch/integrating/manifest.html). That makes it impossible for users to spoof their `user_id`.

When passing `email`, you are responsible for verifying the user's email
address first, otherwise they could attempt to guess an email they don't own in
order to fake ownership.

Sample output:

```json
{
  "download_key": {
    "id":124,
    "created_at":"2014-02-28 00:25:09",
    "downloads":74,
    "key":"YWKse5jeAeuZ8w3a5qO2b2PId1sChw2B9b637w6z",
    "game_id":3,
    "owner":{
      "display_name": "Amos",
      "gamer": true,
      "username": "fasterthanlime",
      "id": 1994,
      "url": "https://fasterthanlime.itch.io",
      "press_user": true,
      "developer": true,
      "cover_url":
      "https://img.itch.io/aW1hZ2UyL3VzZXIvMjk3ODkvMTk4MjkwLnBuZw==/100x100%23/qg3l0J.png"
    },
  }
}
```

If `download_key` is invalid, revoked, or for another game, returns:

```json
{
  "errors": ["invalid download key"]
}
```

If `email` or `user_id` hasn't purchased or claimed the game, returns:

```json
{
  "errors": ["no download key found"]
}
```

<div id="purchases"></div>
### <span class="get_label"></span> <span class="scope_label">game:view:purchases</span> `https://itch.io/api/1/KEY/game/GAME_ID/purchases`

Returns the purchases an email address has created for a given game. Only
successfully completed purchases are shown.

`GAME_ID` can be retrieved from the `my-games` API call above.

Requires *either* of the following parameters:

  * **`email`**: The email address to look up purchases for, 
  * or **`user_id`**: The user identifier to look up purchases for.

The call is aware of verified email addresses associated with the one you
provide. Meaning if someone has the email *person@example.com* and has linked
*person2@example.com*. You can request with either email address to get their
purchase regardless of which email address it originated from.

You can use this API call to verify that someone has bought your game on
itch.io on your own server. You are responsible for verifying their email
address first, otherwise they could attempt to guess an email they don't own in
order to fake ownership.

> **Claimed keys** do not have purchases associated with them, and so
> this endpoint will return an empty purchases object. To look up both claimed
> keys and purchased keys, use the [/download_keys](#download_keys) endpoint.

Sample output:

```json
{
   "purchases":[
      {
         "donation":false,
         "id":11561,
         "email":"leaf@example.com",
         "created_at":"2014-02-28 00:25:09",
         "source":"amazon",
         "currency":"USD",
         "price":"$1.00",
         "sale_rate":0,
         "game_id":3
      }
   ]
}
```

The `donation` field is true for any purchase that doesn't have a download key
associated with it, currently this only applies to web games.

