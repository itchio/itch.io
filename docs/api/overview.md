{
  title: "itch.io API"
  amp: true
}

## Server-side API

The server-side API lets you communicate with your itch.io account via an API
key to make queries and changes.

$link_btn{"Documentation for server-side API",
  $url_for{"docs", { splat = "api/serverside" }}}

## OAuth applications

OAuth applications allow you to make requests to the itch.io API on behalf of
another user.

$link_btn{"Documentation for OAuth applications",
  $url_for{"docs", { splat = "api/oauth" }}}

## JavaScript API

The JavaScript lets you embed a custom buy button on your site.

$link_btn{"Documentation for JavaScript API",
  $url_for{"docs", { splat = "api/javascript" }}}

## Widget API

The [itch.io widget][widget] is an `iframe` based snippet of HTML that you can
embed into your existing page. For any projects you control, you can generate
the necessary code by clicking the *Widgets* link next your game in [your
dashboard][dashboard].

Additionally, you can find an *Embed* link at the bottom of any project page to
generate the widget embed code.

## RSS feeds

Looking for a way to subscribe to new games on itch.io?

For any browse page URL, such as <http://itch.io/games/price-free>, you can
append .xml to the end of the URL to get access to an RSS feed containing those
games, eg.: <http://itch.io/games/price-free.xml>

Additionally the following feeds are available:

* Latest games uploaded: <http://itch.io/feed/new.xml>
* Latest games to have been featured on the homepage: <http://itch.io/feed/featured.xml>
* Active sales: <http://itch.io/feed/sales.xml>


