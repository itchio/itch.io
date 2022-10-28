{
  title: "OAuth Applications"
}

If you want to do some API requests on behalf of another user, you need
to register an OAuth application.

For example, you might be creating a website that processes someone's
itch.io data in some way.

Or, you want to use the itch.io API in your game even when it's launched
without [the itch.io app](/app).

> **Tip**: If you just want to use the itch.io API in your game, you can simply
> add the API scopes you need in your [app manifest](/docs/itch/integrating/api/).
>
> It's by far the easiest for you to set up, and the best user experience
> for your players!

$index

## Introduction

The API documented in this page implements the "Implicit flow" of the OAuth 2.0
spec. If you're already familiar with it, you should only need to skim through
the page and pick the implementation details you need.

In short, the OAuth 2.0 implicit flows works like this:

  * You redirect the user to `https://itch.io/user/oauth`
    * This is where you pass your client ID and the scope you need
  * The user sees a page where they can review the permissions (scopes) you're asking for.
  * If they accept, credentials for your app are generated and the user
  is redirected to the Authorization Callback URL you specified when registering
  the OAuth app. This is a page you control and you serve.
  * The credentials you need are included in the `hash` part of the URL.
    * The callback page you serve should include javascript code that extracts the access
    token you need and POSTs it securely to your server

## Registering an OAuth application

As a developer, you can manage your OAuth applications from your
[user settings](/user/settings/oauth-apps).

> Try to keep things neat and tidy. If you have multiple websites or
> games using the itch.io API for a different purpose, create separate
> OAuth apps for them.

## The authorization step

To let users choose to grant permissions to your apps, you should redirect
them to the following address:

`https://itch.io/user/oauth`

It requires the following parameters:

  * **`client_id`**: The Client ID corresponding to your OAuth application, which you can retrieve from your [OAuth application settings](/user/settings/oauth-apps)
  * **`scope`**: A space-separated list of scopes you'd like access to (see the Scopes section below)
  * **`redirect_uri`**: The address of a page the user will be redirected to if
  they accept to grant your app permissions. *This must match your OAuth application settings*. See the Redirect URI section below.
  * **`state`** (optional): If this is specified, it will be included in the
  hash part of the address the user is redirected to. See the Security Considerations section below.

The parameters should be included as a query string. Here's a sample authorization
URL with dummy values:

`https://itch.io/user/oauth?client_id=foobar&scope=profile:me&redirect_uri=https%3A%2F%2Fexample.org%2F`

### Scopes

The only scope you can request is `profile:me`. It gives you access to the
`/me` API endpoint. In the future, as we expand the API, we will make more
scopes available. Need something specific? [Get in touch][support].

See the [server-side documentation](/docs/api/serverside) for a list of endpoints
and their scopes.

### Redirect URIs

The redirect URI (or Authorization callback address) is where a user will get
redirected after they approve your request for credentials.

The credentials are included in the hash part of the URL.

For example, if you specify the following redirect URL:

`https://example.org/oauth/callback?a=b`

Then the user will get redirected to the following page:

`https://example.org/oauth/callback?a=b#access_token=YYY&state=ZZZ`

The hash part of the URL is encoded like a query string - see the
next section for retrieval.

#### Loopback address (local http server)

If you're creating a desktop application, you may have to set the redirect URI
to the loopback address, like `http://127.0.0.1:34567`.

#### Out-of-band authentication (copy/paste)

If you set the redirect URI to `urn:ietf:wg:oauth:2.0:oob`, the user won't be
redirected. Instead they'll be shown a page with the API key and instructions
to copy and paste it into your app.

This is especially useful in scenarios where:

  * You set the redirect URI to a loopback address
  * ...but were not able to listen on that address
    * either because some other program was already listening on that poart
    * or because the user did not allow your program to listen on a port (the Windows firewall will do that)

So, as a best practice, if you're implementing a desktop app, you should
try to listen on your registered loopback address, and if you can't, fall back
to `urn:ietf:wg:oauth:2.0:oob` and allow your user to copy & paste the API key instead.

## Retrieving the access token in JavaScript

The hash part of URLs is not seen by HTTP servers, or HTTP proxies.
That's why the OAuth 2.0 Implicit Flow puts sensitive information
(the access token) in there.

That means you need to serve a page that includes a bit of JavaScript
to retrieve the access token, and send it to your server, usually
via an [XHR](https://developer.mozilla.org/en-US/docs/Glossary/XHR_(XMLHttpRequest)).

It's tempting to use a couple of regular expressions to retrieve
the access token, but we encourage you to use libraries or standard APIs instead.

Here is example code to retrieve the access_token:

```javascript
// this code assumes a recent browser or polyfill - see next paragraphs

// first, remove the '#' from the hash part of the URL
var queryString = window.location.hash.slice(1);
var params = new URLSearchParams(queryString);
var accessToken = params.get("access_token");

// you can also get the state param if you're using it:
var state = params.get("state");
```

> See this code in action in [this codepen](https://codepen.io/fasterthanlime/pen/OxwOLP)

URLSearchParams is available in recent browsers, see
the 'Browser compatibility' section of [URLSearchParams's MDN page](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams).

If you need to support older browsers, you can use a polyfill:
[url-search-params](https://github.com/WebReflection/url-search-params) comes
with a build you can easily include in your website.

## Using the access token

Once you've successfully extracted the access token from the hash part of the URL,
posted it to your server with an XHR, and saved it in your database, you can use
it to make API requests.

Access tokens given by the OAuth 2.0 flow are API keys, which you can use as described
in the [server-side API docs](/docs/api/serverside).

## Checking the access token's permissions

You can use the `/credentials/info` endpoint to list the scopes associated
with an access token. Look it up in the [server-side API docs](/docs/api/serverside)
for details.

## Security considerations

To avoid various types of attack, the OAuth 2.0 spec recommends **only requesting the scopes you need**:

  * Be specific: if all you need is `profile:me`, don't request all of `profile`
  * If you need more permissions later, you can always make the user go
  through the flow again to expand the scope of your credentials.

> We only support the `profile:me` scope right now, but as we expand the API
> you'll be able to request more scopes.

The OAuth Authorization callback page should be served over HTTPS to avoid man-in-the-middle
attacks. Nowadays, getting an SSL certificate is easy thanks to efforts like [Let's Encrypt](https://letsencrypt.org/)

The OAuth Authorization callback page should not include any third-party
javascript code (social sharing widgets, etc.) - if it does, you should at least
make sure your access token extraction code runs first and that it clears
`window.location.hash`.

A `state` parameter can be used as a nonce - it is generated by your server, included in the
login URL, and then again in the callback URL as part of the hash. You should check that the value
you get back is equal to the one you passed in.
