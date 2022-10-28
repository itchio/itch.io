{
  title: "itch.io app FAQ"
  share_message: "Common questions and answers for the itch.io desktop app, itch"
  amp: true
}

$index

## Where can I download it?

You can always find the latest version on <https://itch.io/app>.

## What platforms does the app run on?

The app is available for **Windows**, **Linux** and **macOS**.

Keep in mind that many games are limited to specific
platforms. HTML5 games can be downloaded and played on all platforms.

## How do I keep it updated?

On Windows and macOS it will automatically download and apply updates when a new
version is released.  You'll get a notification with a list of changes and will
have a choice to restart the app now or later.

On Linux you'll have to get updates through your package manager or by
[redownloading](https://itch.io/app). The app is available:

  * On our [.deb
    repository](https://itch.io/docs/itch/installing/linux/ubuntu-and-debian.html) for Ubuntu and other Debian-based flavors
  * On our [.rpm
    repository](https://itch.io/docs/itch/installing/linux/fedora.html) for Fedora and other YUM-based distributions
  * In the [ArchLinux AUR](https://aur.archlinux.org/packages/itch/)
  * As a portable .tar.xz archive

Reinstalling the app or installer a newer version of the app will keep
your Library intact with all games installed and functional.

## Will the app replace the website?

No. We want the app to compliment the website, not replace it. There are some
things that don't work well in a browser, like installing and updating
software, so that's why we made the app.

## Where are the games installed?

The preferences page shows where games are installed by default. You can add
other install locations and make them the new default, to avoid filling up
your system disk.

<img style="max-height: 250px;"
src="https://dl.itch.ovh/itch-faq/install-locations.png">

## How are games executed?

The app will do the best it can to figure out how to start your game by looking
for an executable or script.

If the default heuristics don't work with your game, you need multiple launch
targets, or want API integration, you can distribute an [App
manifest](https://itch.io/docs/itch/integrating/manifest.html) with your game,
that tells the itch app how to run them properly.

## How can I ensure my game works in the app?

Read the [integration guide](https://itch.io/docs/itch/integrating/), which
covers the following topics:

  * [Getting your game running
    quickly](https://itch.io/docs/itch/integrating/quickstart.html)
  * [Using an app manifest](https://itch.io/docs/itch/integrating/manifest.html)
  * [Updating your game](https://itch.io/docs/itch/integrating/updates.html)
  * How to package your application correctly for
    [Windows](https://itch.io/docs/itch/integrating/platforms/windows.html),
    [macOS](https://itch.io/docs/itch/integrating/platforms/osx.html), [Linux](https://itch.io/docs/itch/integrating/platforms/linux.html) and [HTML5](https://itch.io/docs/itch/integrating/platforms/web.html)

## I'm using Windows XP / Windows Vista, & the app doesn't work

The app requires Windows 7+

## A game I want to play doesn't download / install / run

While the app can now run most games you can find, compatibility issues still
happen from time to time, especially on Linux where best practices aren't
followed by all.

You can use the "Send feedback" button to report them to our [dedicated
compatibility tracker][compatibility-tracker] and
help us get running!

<img class="showcase" style="max-height: 250px;" src="https://dl.itch.ovh/itch-faq/send-feedback-game.png">

## Where can I report bugs?

Use the 'Send feedback' item of the main menu (bottom-left, click on your name),
this will prefill an issue with your platform and app version on our [issues tracker on github][issue-tracker].

<img class="showcase" style="max-height: 350px;" src="https://dl.itch.ovh/itch-faq/send-feedback.png">

## How can I help with the app?

* The [issue tracker][issue-tracker] is at the fore-front of itch's development.
Even if you don't write code, you can often help out by reporting whether
certain solutions do or do not work on your system, or by pointing to games
who are affected by a certain issue.

<img class="showcase" style="width: 80%;" src="https://dl.itch.ovh/itch-faq/issues.png">

* If you do write code, announce your intention to tackle an issue by commenting
on it first (to avoid duplicate work), and eventually submit a [Pull
Request](https://github.com/itchio/itch/pull/new/master).

<img class="showcase" style="width: 80%;" src="https://dl.itch.ovh/itch-faq/pulls.png">

Make sure to adhere to our [Code of Conduct][coc], so
that everyone feels welcome!

## What is it written in?

The app is powered by [Electron][electron] and in JavaScript, with some native helpers written in Go, C, C++, and Objective-C.

<img style="max-height: 520px;"
src="https://dl.itch.ovh/itch-faq/code.png">

The app and all its helpers are open-source, you can browse their code on our
[Github organization][gh-org].

In particular, check out:

  * The [app's main repository][gh-itch]
  * [butler][gh-butler], the itch.io command-line tool that powers itch downloads,
    uploads, and patching.
  * [elevate][gh-elevate], a Windows command-line tool that is used to show
    Administrator prompts and power the [itch.io sandbox][sandbox] on windows.

[coc]: https://github.com/itchio/itch/blob/master/CODE_OF_CONDUCT.md
[electron]: https://electron.atom.io/
[gh-org]: https://github.com/itchio
[gh-itch]: https://github.com/itchio/itch
[gh-butler]: https://github.com/itchio/butler
[gh-elevate]: https://github.com/itchio/elevate
[sandbox]: https://itch.io/docs/itch/using/sandbox.html
[issue-tracker]: https://github.com/itchio/itch/issues
[compatibility-tracker]: https://github.com/itchio/itch-compatibility-watchlist/issues

