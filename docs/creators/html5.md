{
  title: "Uploading HTML5 games"
  share_message: "Upload your HTML5 games to itch.io!"
  amp: true
}

**itch.io** supports uploading [HTML games](https://itch.io/games/html5) for
play directly in the browser. In order for your game to function it must be
implemented using web technologies such as HTML, JavaScript, and CSS. Many
modern [game engines](https://itch.io/game-development/engines) support
exporting to HTML & Javascript, which will allow your players to run your game
directly in their browser without separate downloads or installs.

> **Note:** Although in this guide we mention games specifically, you can upload
> any kind of HTML/JavaScript/CSS project on **itch.io**.

Quickstart: Head over to [New Game][new-game] or edit an existing page, pick
*"HTML Game"* from the *Kind Of Game* list, then upload your game packaged as a
ZIP file.

<div class="button_row">
<a href="$url_for{"developers"}" class="button fat on_logged_out">Create an account with itch.io</a>
<a href="$url_for{"new_game"}" class="button fat on_logged_in">Create a new game</a>
<div class="sub">or read on to learn more</div>
</div>

$index

## Getting started

**itch.io** supports running HTML/JavaScript/CSS projects directly in the browser by embedding
an `iframe` pointing to your uploaded code on your **itch.io** project page.
All of your game's assets are hosted by us so you don't need to worry about
uploading files anywhere else. There are two ways to upload an HTML5 game:

* Upload a ZIP file that contains all your project's files, including an `index.html` file that will be your game's entry point.
* Upload a single HTML file that contains your entire game.

### ZIP File

If your game is more than a single file, it must be uploaded as a ZIP file.

The ZIP file must contain a file called `index.html`, this is what people will
see when they go to play your game. The ZIP file should include all the files
necessary to run your game. File names are case sensitive.

Your ZIP file can contain any kind of file you need for your game. Make sure to
use relative paths when developing your game to ensure assets are loaded
correctly. If you make a mistake or release a new version of your game feel
free to upload a new ZIP file and delete the old one.

### HTML File

For simple projects that are self contained in a single `.html` file, you
directly upload the file without zipping it.

Your page will not be able to reference any other files you've uploaded on
itch.io page. If you need multiple files then you must upload a ZIP file
instead.

## Embed Options

On your project's edit page, after uploading an appropriate file to be embedded,
you will see a new section called *Embed options* where you can configure how
your code will be embedded.

There are two ways your game can be displayed:

* **Embed in page** -- You provide the dimensions of the viewport, and the game will run directly on the page
* **Click to launch in fullscreen** -- Upon clicking "Launch game" your game will expand to the entire viewport in fullscreen. It is not necessary to provide the dimensions. The code you provide should be able to adapt to various sizes.

Here are some of the other options we provide for customizing your embed:

* **Click to Play** -- By default your project will require a click to start. This will ensure your game doesn't slow the viewer's browser when the itch.io page initially loads. If you have a lightweight project, you can disable *Click to play* and your project will start when the page loads. Keep in mind audio may be muted on some browsers when using auto-start.
* **Fullscreen Button** -- We can automatically generate a fullscreen button for your project if the engine you are using doesn't automatically provide one. This button will be overlayed on the bottom right of your page when using the **Embed in page** launch mode.
* **Scrollbars** -- Some projects are designed to be larger than the size of their viewport. Enabling scrollbars will allow viewers to scroll within the `iframe`. They are hidden by default.

## Viewing Your Game

After setting your game's dimensions and uploading the ZIP file you can preview
your game on **itch.io**. Upon first loading the game page, **itch.io** will
take a moment to process the archive.

Meanwhile you are free to customize your game page as you would with any other
game on **itch.io**.

## Can I take payments with my HTML5 game?

Currently all HTML5 games on **itch.io** are set up to only take payments as
donations. However, it's possible to sell access to your game by setting its
*"Kind of Game"* to *"Downloadable"*. If you'd like **itch.io** to support
purchasable HTML5 games then you should [get in touch][support].

## ZIP file requirements

There are a couple of requirements for ZIP files in place to prevent abuse and
to ensure a suitable experience for people running your project in their
browser:

* The ZIP file should not contain more than 1,000 individual files after
  extraction.
* The maximum length of a file name including path should not be greater than
  240 characters long.
* The size of all the extracted content should not be greater than 500MB.
* The size any single extracted file should not be greater than 200MB.
* The filenames are case sensitive and should be encoded as UTF-8

If your game does not meet the requirements please consider distributing your
game as downloadable instead. Very large HTML5 games tend to be a poorer
experience compared to the equivalent downloadable in respect to loading time
and performance.

> **Why do we have limits?** Although many game engines allow you to export
> anything as an HTML5 project, often you need to consider what the user
> experience of playing the game will be like. You can think of an HTML5
> project like a website: many of the same performance optimization
> recommendations still apply. We have these default limits to encourage
> developers to consider how their games are distributed, especially since it's
> so easy these days to drop in prefab resources from asset-stores that
> significantly increase the download size for the game.

Feel free to [contact us][support] if you think these limits aren't appropriate
for your project and we can see what we can do .

## Customizing how your game is embedded


### Visual customization

For projects that use **Click to play**, you can customize the what the
viewport looks like before the game is launched. You can find these options on
the project's theme editor.

* **Background Image** -- A image that takes up the size of the viewport that sits behind the *Play* button.
* **Gradient** -- A gradient color can be overlayed on the viewport to help you match the colorscheme of your page.

## Support for Mobile HTML5 Games

Many HTML5 game engines support playing games through a mobile web browser. If
you know your project functions in a mobile browser then you can select the
**Mobile Friendly** option in the embed settings for your project.

When your itch.io page is loaded on a mobile device, it will use *Click to
launch in fullscreen* mode regardless of how you've configured your embed for
desktop computers. This will ensure itch.io's user interface does not interrupt
your application, along with preventing an auto-starting game from unexpectedly
consuming resources.

If you haven't enabled **Mobile Friendly** then a warning will be displayed to
the viewer that the game may not work, but they can still attempt to start it.

## Game Engine Detection

When you upload your HTML5 game we'll scan the files to detect the game engine
used automatically. This can help get your project listed in our browse pages.
Here are some examples of HTML5 games using specific engines.

 * [Bitsy](https://itch.io/games/made-with-bitsy)
 * [Twine](https://itch.io/games/made-with-twine)
 * [PICO-8](https://itch.io/games/made-with-pico-8)
 * [PuzzleScript](https://itch.io/games/made-with-puzzlescript)
 * [TIC-80](https://itch.io/games/made-with-tic-80)
 * [Unity](https://itch.io/games/html5/made-with-unity)

If you think we're missing a engine you can [suggest a new one](https://itch.io/suggest-a-tool).


## Common Pitfalls

Here are some common issues people run into when uploading their project. If
you're about to upload something, or are having an issue, read through the list first.

* **Not uploading a .ZIP file** -- If you are trying to upload a project that uses multiple files you must compress them as a ZIP file and upload that. **We do not support any other archive types**, (`.rar`,`.tar.gz`, and `.7z` are not supported). Uploading multiple files individually to the itch.io website will not work either, you must combine all necessary files into a ZIP file. Note that if your project is a single HTML file, then you can upload that directly and skip ZIPing it.
* **Attempting to access a path that doesn't point to a file** -- If you attempt to load a resource that doesn't point to a file the request will fail. This includes attempting to access a folder (paths ending in `/`) instead of a specific file. Due to our security settings, our system will return a `403` error instead of the more commonly seen `404`. (In Chrome you may see `net::ERR_ABORTED 403`). 
* **Using absolute paths instead of relative paths** -- Your project is hosted on a subdirectory on our HTML CDN. If you use an absolute path in your sourcecode then it will cause the browser to attempt to make a request outside of the path of your project, and the request will fail. Absolute paths are paths that start with a `/`. You must use relative paths to access other files you have provided in your project.
* **Mismatched cases when referencing files** -- The server that hosts your project's files is case-sensitive. MacOS and Windows computers allow for files to be loaded case-insensitive. It's possible your project works locally on your computer but fails after you upload it. Please check that all files you reference use the exact case that is shown on your file manager.  This is commonly associated with a `net::ERR_ABORTED 403` error in Chrome. If you have a file named `Hello.png`, you must reference it as `Hello.png`, things like `hello.png` and `HELLO.png` will not work because the case does not match.
* **Referencing external resources without HTTPS** -- If your project tries to load files or talk to an API on another domain, then that domain must be requested with HTTPS. For security reasons, itch.io is an HTTPS website with no exceptions. All modern browsers will generally block requests to other domains if they aren't running on HTTPS. There are no exceptions. There are many free resources for adding HTTPS to your own domain, like [Let's Encrypt](https://letsencrypt.org/).
* **Uploading a very large game** -- Although many game engines allow you to export anything as an HTML/JavaScript project, often you need to consider what the user experience of playing the game will be like. For larger games, it's often better to go for a downloadable version. This is why we have default limitations for project sizes (although you can contact us if you need lifted limits). Projects can still be easy to play with the [itch.io app](https://itch.io/app). You can think of an HTML project like a website: many of the same performance optimization recommendations still apply.

## Exporting your game for itch.io

When exporting your game for itch.io we recommend using a template or markup
that allows for your game's canvas to adjust to the size of the window is is
placed in. When using a fullscreen button the viewport size will dynamically
adjust to the size of the viewer's screen. Additionally, when running an HTML5
game on a mobile device, the viewport will have a dynamic aspect ratio and
resolution matching the user's device.

Here are some recommend resources:

* **Unity**: <https://seansleblanc.itch.io/better-minimal-webgl-template>

If you have any other recommended resources or tips for configuration please
send them to [support][support].


## Compression

Some game engines will pre-compress assets as part of their build process. In
order for these assets to download correctly, often the webserver will have to
detect these and apply the appropriate headers for the particular file.

* If the content of the file is detected as gzip compressed, the `content-encoding` header to `gzip`. The `content-type` header of the file will detected and set by the extension, removing `.gz` if necessary.
* If the filename ends with the extension `.br` then we'll assume that the content is Brotli compressed and the `content-encoding` will bet set to `br`. The The `content-type` header of the file will then be detected and set by the extension, after removing the `.br`. (Note: Brotli encoding can not be detected like gzip, so we must depend on the `.br` extension). This approach is commonly used by Unity 2020 WebGL export.

### Compressed file types

In order to reduce bandwidth and decrease loading times, itch.io's CDN will
automatically apply GZIP compression to the following file types if they are
provided uncompressed.

File extensions:

* `html`
* `js`
* `css`
* `svg`
* `wasm`
* `wav`
* `glb`
* `pck`

If we aren't able to match by extension, if we see the following content type on a file we will also attempt to compress it:

* `application/x-javascript`
* `application/javascript`
* `text/javascript`
* `text/css`
* `text/html`
* `application/xml`
* `application/json`
* `image/svg+xml`


