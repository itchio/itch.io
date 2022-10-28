{
  title: "JavaScript API reference"
}
The itch.io JavaScript API gives you the ability to embed a game purchase
button into an existing web page. All you need to do is create a button or link
on your page, include a JavaScript file, and run a small snippet of code to
connect them.

$index

The pop-up is also suitable if you have 0 as a minimum price because it will
give the visitor the option to go directly to the downloads.

Let's see it in action, first we'll add a button that will be our buy button:

```html
<button id="buy_button">Buy My Game!</button>
```

Next, we'll add something like the following, updating the `user` and
`game` to be your username and the slug from the game you wish to sell.

```html
<script type="text/javascript" src="https://static.itch.io/api.js"></script>
<script type="text/javascript">
  Itch.attachBuyButton(document.getElementById("buy_button"), {
    // replace the following with the correct information about your game
    user: "{{user}}",
    game: "{{game}}"
  });
</script>
```


Now when someone clicks on the button a pop-up will appear giving the visitor
an opportunity to purchase your game.

Try it out:

<button id="buy_button">Buy My Game!</button>

## Reference

Methods in `https://static.itch.io/api.js`

### `Itch.attachBuyButton(element, options)`

Attaches a buy button to a DOM element on the page.

`element` is a DOM element. (If you're using jQuery make sure you pass in the
DOM element and not the jQuery object)

`options` is an object that can contain the following fields:

* **`user`**: *Required* The username of the game seller
* **`game`**: *Required* The slug of the game, the slug is the name of the game
  from the URL of the game. For example, if your game's URL is
  http://leafo.itch.io/x-moon then the slug is `x-moon`.
* **`width`**: The width of the pop-up, defaults to 650
* **`height`**: The height of the pop-up, defaults to 400

### `Itch.getGameData(options)`

Asynchronously get information about a game.

`options` is an object that can contain the following fields:

* **`user`**: *Required* The username of the game seller
* **`game`**: *Required* The slug of the game, see above for an example
* **`onComplete`**: *Required* A function to call when the game information is loaded. Receives one argument: a hash table of game information
* **`secret`**: If your game is in draft, you can pass the secret here to let the API access it. Note that anyone can get access to this secret by viewing the source of your page. We recommend only using this parameter for testing.

In addition to some basic game metadata, `gameData` will return any information
about the current price of the game and any rewards. You can use this in
conjunction with the buy button API to show current price. The price will
reflect any sales that might be active.

Example: 

```html
<script type="text/javascript" src="https://static.itch.io/api.js"></script>
<script type="text/javascript">
  Itch.getGameData({
    user: "leafo",
    game: "x-moon",
    onComplete: function(data) {
      console.log(data)
    }
  })
</script>
```

A game with rewards might return something like this:

```json
{
  "id": 1,
  "title": "X-moon",
  "price": "$20.00",
  "rewards": [
    {
      "amount": 1000,
      "price": "$20.00",
      "title": "Limited Access round",
      "id": 90,
      "amount_remaining": 0,
      "available": false
    }
  ]
}
```


A game on sale might return something like this:


```json
{
  "id": 36,
  "title": "ExoSlime DX: Revenge of Slime",
  "price": "$0.60",
  "original_price": "$1.21",
  "sale": {
    "id": 18,
    "end_date": "2016-06-30 10:17:59-07",
    "title": "My first sale",
    "rate": 50
  }
}
```
