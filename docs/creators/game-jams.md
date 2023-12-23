{
  title: "Hosting a game jam"
  share_message: "Host a game jam on itch.io"
}

Hosting a game jam is a great way to get together game developers for an event
or cause to do what they do best: make games. **itch.io**'s jam system allows
anyone to create a game jam instantly, no longer does the need for custom
software to get in the way of your game jam idea! All that's required is a free
itch.io account.

$index

<div class="button_row">
<a href="/developers" class="button fat on_logged_out">Create an account to host a jam</a>
<a href="/jams/new" class="button fat on_logged_in">Create a game jam</a>
<div class="sub">or read on to learn more</div>
</div>

## How it works

"Game jam" is a pretty broad classification when it comes to trying to define
how things are run. The spectrum ranges from ranked submissions and very
specific deadlines, to no deadlines and no ranking. Some jams are held only on
the internet while others are associated with a physical gathering. **itch.io**
hopes to accommodate all of the kinds of jams imaginable.  What is available
today is only the start and the functionality will continually be expanded
upon. If you would like to do something custom then don't hesitate to [get in
touch](/support).

To give you an idea of what game jams can look like on **itch.io** here are some
examples:

$image_carousel{
  {
    src = "/static/images/jam/promo/thumb/jam1.png",
    alt = "TOJam 9",
    href = "http://itch.io/jam/tojam9"
  },
  {
    src = "/static/images/jam/promo/thumb/jam2.png",
    alt = "The Public Domain Jam",
    href = "http://itch.io/jam/the-public-domain-jam"
  },
  {
    src = "/static/images/jam/promo/thumb/jam3.png",
    alt = "Game Changer Game Jam",
    href = "http://itch.io/jam/gamechangergamejam"
  },
  width=180
}

## Jam customization

All jams have a wide range of tools to customize how they look and how they're
run.

### Ranked jams

**itch.io**'s basic jam system is closely modeled after [Ludum
Dare](http://www.ludumdare.com/), a popular 48/72 hour game jam. Jams have a
starting and ending date. Games can be submitted to the jam any time between
these two dates.

If the jam has voting enabled, after the submission deadline passes the rating
period commences up until the voting end date. Otherwise, the jam is over after
the submission deadline

For ranked jams, after the voting end date passes, the results are calculated
and everyone can see the how the games have been ranked.

In a ranked jam you can control who has permission to vote:

* **Submitters only** -- Only the account that created the submission page can vote on other entries
* **Submitters & Contributors** -- All contributors to any submission page can vote, see below for considerations
* **Judges only** -- Only jam hosts and those added as judges can vote
* **Public** -- Anyone with an itch.io account. **See below for considerations**


#### Warning about *Public* voting

Public voting is *generally a bad idea* unless you have some way to restrict
how people can vote (See [Rating queue](#jam-customization/rating-queue)). On
itch.io anyone can create a new account at any time. It is **very easy for
someone to cheat** by creating new accounts to upvote their project and
downvote others'. Although this is against the itch.io Terms of Service, and we
have some automated systems in place to detect suspicious behavior, no system
is perfect.

If are concerned about the integrity of your ranking (for example, you have a
prize or reward), then **you should be extremely cautious** about using public
voting.

Even if you think your community is friendly and wouldn't cheat, you will
almost always get cheaters. We highly recommend using the *Rating Queue* to
help prevent cheaters. Even then, there may still be suspicious voting
activity. If you need us to review votes on a jam you can [contact
support](/support).

One last thing to consider with *Public* voting: even if you don't have
cheaters, it favors creators that have a large social presence. It essentially
will boil down a popularity contest. Whoever can tell the most of their friends
to upvote their project will win.

Therefore, **Don't use public voting unless you know what you are doing**.

#### Considerations about *Submitters & Contributors* voting

On itch.io, a single project can have any number of contributors added to the
project. If are concerned about the integrity of your ranking (for example, you
have a prize) then you should be careful about participants that may try to
exploit this. Essentially a single submission with many contributors will have
more "voting power" when using the *Submitters & Contributors* option. A single
entry will have multiple people able to vote on other projects to influence
their ranking in their favor.

It's also possible for someone to cheat by creating a bunch of fake accounts as
contributors so they can get more votes. Although this is against the itch.io
Terms of Service, and we have some automated systems in place to detect
suspicious behavior, no system is perfect.

If you need us to review votes on a jam for suspicious activity you can
[contact support](/support).

### Rating queue

The *rating queue* is a unique mode you can enable on ranked jams to assist
submissions in reaching a minimum number of votes fairly. It operates by
requiring a group of voters that you select to vote from a random assortment of
entries (default is 5, but you can adjust this number).

This can help with many issues:

* Prevent popular games from getting all the votes and getting scored in a way that is not comparable to the other entries in the jam
* Help ensure that all entries get some number of minimum votes by evenly distributing what projects appear on voter's queues
* Prevent cheaters who try to create new accounts to vote on specific entries for jams that use *Public voting*. (Although this won't fully stop someone from trying to cheat, it will make their behavior much more obvious for detection)

You can also provide an *Rating queue unlock size* to allow voters to
freely rate any entry after they have rated a specific minimum number of
entries. By default the queue is always in effect, but you can set this
number from 1 to 100.

You can control who is required to vote through the rating queue.

Note that although the rating queue restricts what projects can be rated by an
account, it does not prevent them from leaving comments or downloading
submissions in any way.


#### Preferred platform & Shuffle queue

To prevent participants from getting stuck with a list of games in their queue
that they can't rate, the rating queue comes with two tools for all voters:

* **Preferred platform** -- A voter can select their preferred platform (Windows, Linux, macOS, etc.) to ensure that they are only given projects they are capable of rating. Browser playable projects are always included. **Note:** If submissions are not platform specific (eg. pdfs, videos, etc.), then do not select a preferred platform, as it will prevent access to those entries.
* **Shuffle queue** -- A voter can, for each jam, shuffle the queue of entries one time to get a new set of entries to pick from. It's recommended to only do this if the current sent of entries is all unratable (eg. broken, missing files, doesn't work on user's system, etc.)

> **Note:** If there are a small number of submissions in the jam, then shuffling and
> preferred platform may have a limited effect on the set of available projects
> to rate. For smaller jams, we recommend hosts consider if the rating queue is a
> suitable solution for their jam.


### Ranking criteria

When creating a jam you have the option to pick the criteria that entries are
rated on. You can add as many as you like and they can be whatever you want. If
you've got a theme feel free to pick criteria that represent the different
components of the theme. Each criteria is rated on with a 5 star system.

You can pick create and edit criteria from the *Edit jam page*:

$image_carousel{
  "https://img.itch.zone/aW1nLzgwMTEyOC5naWY=/original/fP1epx.gif",
  caption = "Editing jam criteria"
}

After a jam's rating period is over, all the entries in the jam are ranked by
the average scores in each criteria. If there are multiple criteria then an
*Overall* rank is also calculated from the average of all the criteria results.

Once rating period has started, it's not possible to edit your criteria. Please
double check them before publishing your jam!

#### Primary criteria

By default, entries are ranked by the average score of all the criteria. If
you'd like to have one of your custom voting criteria determine the overall
ranking then you can select it as the *Primary* option from the criteria
editor.

When you provide a primary critiera an automatic *Overall* ranking will not be
generated when there are multiple criteria.

If there is only one criteria, then it's primary by default and it's not
necessary to mark it.

#### Manual ranking

For jams that have judges determine a ranking of entries outside of itch.io's
voting system, you can use the manual ranking option. This will enable any jam
host to enumerate the ranks for each game that ranked in a particular criteria.

It's not necessary to rank every entry, and entries can share the same rank if
there was a tie.

When *Manual Ranking* is enabled for a criteria, it can not be voted on.
Manually ranked results will only appear after the rating period is over. If
you don't add them in time, then they'll appear as soon as you add them.

$image_carousel{
  "https://img.itch.zone/aW1nLzEwMDA3MDUuZ2lm/original/YxgBms.gif",
  caption = "Manual ranking"
}

### Judges

Jam hosts can elect judges from their jam from their jam's edit page. Judges
are given special permission to rate any submission (normally, only people who
submit to jams are allowed to vote). You can further restrict your jam to only
allow judges to vote with using the *Who can vote on entries?* option on the
jam's edit page.

When judges comment on entries or posts in the jam's community they are given a
**Judge** badge so participants can identify them.

Jam hosts have all the same permissions of judges, but they get a **Host**
badge instead.

#### Judge Feedback

Judges have a special method of giving feedback outside of the regular comments
system provided on jam submission pages. The use of the feedback system is
optional, and you should consult with your judges to see if it's something that
makes sense for your jam.

During the rating period, a feedback form will appear for judges on the
submission page:

* Feedback can always be left, even if comments are disabled
* Feedback appears in a special area on the entries page, above the comments
* Feedback doesn't appear on the game's rating page until after the rating period has ended
* Feedback is anonymous, doesn't have a reply button, and it shown in a random order when more than 1 judge has posted

Judge feedback is only available for ranked jams.

### Custom fields

In addition to criteria, you can also provide custom fields that are required
along with a submission. For example if sourcecode a requirement for submission
you can create a *Sourcecode* field, or if you your game must be released under
Creative Commons you can create a drop-down for that.

Just like criteria, the custom fields are free-form so you're free to make them
whatever you want.

$image_carousel{
  "/static/images/jam/promo/thumb/fields.png",
  caption = "Editing jam fields"
}


The responses to the custom fields are visible on the jam submission page of
the game.

### Non-ranked jams

If you select *Non-ranked* on your jam's edit page then no voting will take
place after the submission deadline ends. This is great if you want a simple
way for people to submit games to over a certain time period. You can still use
all other jam features, like custom fields and communities.

### Unlisted jams and moderation

If you're running a private event you can make your jam *unlisted*: it's only
available to those who have the URL. Additionally, as a jam owner you have the
power to moderate submissions. If something isn't right you can remove it from
the jam.

Additionally you can elect new *jam admins* to share edit & moderation access.

### Jam contributors and hosts

Many jams are team efforts, and so we have a *contributors* system to allow you
to give other itch.io accounts access to your jam. Every contributor has few
different options:

* **Host** -- Shown on the jam's page as being a host
* **Admin** -- Allowed to edit the jam and submissions just like the original creator
* **Judge** -- Allowed to vote on entries, even if they didn't submit. You can combine this with *judge only* voting to limit voting to a specific set of people.

Additionally, on a jam's community page, you can elect moderators if you need
help managing your community.

### Jam communities & comments

Jam owners can can optionally enable a community: a message board where anyone
with an itch.io account is free to discuss anything about the jam. All
communities on itch.io come with a robust set of features to make management
and moderation simple. [Read more about itch.io jam
communities](http://blog.itch.io/post/128643409844/introducing-jam-communities).

Jam submissions automatically get comment threads on their submission page its
own comment thread right on the submission page.

### Locking changes to submission files

For ranked jams, jam hosts can use the **Lock uploads** option to prevent
participants from adding or changing the files on their page during the rating
period.

The lock is only active during the rating period, after the jam has ended
submission owners are fee to release their post jam builds. Additionally, if
the submission period is still active, files can still be changed. Submitting
early will still let you publish updates right up until the deadline.

Participants are free to update their submission page design and content while
their files are locked.

### Hiding results

By default, a ranked jam will calculate and publish the results as soon as the
rating period is over. Sometimes, you may want more control over when the jams
results are published. The *Hide results* option will cause the results to be
hidden from everyone except the jam hosts while enabled. The results will still
be calculated though, so as a host you can preview the results.

You can use this time to prepare any announcements or do any moderation. When
you're ready to publish the results, uncheck this option and save the jam.

### Hide submissions before end

Normally, during a jam's submission period, entries are displayed on the jam
page immediately after submission. This may give an unfair distribution of
attention to submissions that come earlier than others.

The *Hide submissions before end* hides the submissions list from the jam's
page until the submission period is over. This ensures that every entry will
have the same visibility.

Jam submissions are still accessible by their direct URL, or via the project's
page on itch.io.


Some developers try to abuse this by submitting an unrelated game to the jam at
the start of the submission period to capitalize on any traffic the jam's page
may be receiving.

> **Note:** Some nefarious developers may try to abuse the submission process
> to try to capitalize on a jam's traffic by submitting their unrelated project
> early on to get it listed on the jam's page before there are any legitimate
> entries. This is against our rules, but the *Hide submissions before end*
> will prevent this abuse. If you do spot someone trying to abuse the jam
> submissions process, please report their page. Our moderation team will
> handle their account.


## The submission process

When the jam enters the submission period people who want to enter the jam can
navigate to the jam's page to find a submit button. This brings up a game
submission dialog where you can choose from games you've created on **itch.io** to
submit.	If you haven't uploaded your game yet you'll be guided through the process.

Because jam submissions are **itch.io** project pages, you get all the features
that **itch.io** provides. Your files and screenshots are hosted, and you can
design a custom game page. A nice side effect of submitting to a jam on
**itch.io** is that you automatically now have a nice page containing your game
ready to be shared and distributed.

$image_carousel{
  "/static/images/jam/promo/thumb/submit.png",
  caption = "Submitting to a jam"
}

### Late submissions

Did you, or someone in a jam you host, miss the deadline? No big deal, jam
hosts can generate late-submit links from the jam's edit page.

In order to submit late, the entry must have a completed project page on
itch.io uploaded and published. Afterwards, the link to the project can be sent
to the jam host and they can paste it into the late-submit link generator. The
late-submit link can be sent back to the game's creator and they can use it to
fill in any information and complete their submission.

Jam hosts can find the late-submit link generator on the *Edit submissions* tab
of the jam editor.

## Rating and commenting on games

For ranked jams, after the submission period the rating period starts. Anyone
who has permission to vote can now vote on games from their submission pages.

If you have any feedback about the submission you can leave a comment on the
submission's page.

$image_carousel{
  "/static/images/jam/promo/thumb/rate_game.png",
  caption = "Rating an entry"
}

## Browsing submissions

From the *Submissions* tab on a jam's main page you'll be able to find all the
of entries that have been submitted to the jam already. You can filter the
entries by the platforms they support, and by any public submission fields.

Some jams may have submissions hidden until the jam's submission period is
over. In this case, only the hosts of the jam can view the submissions during
that time period.

For jams with voting, any entries that you have voted on will be sorted to the
bottom of the list of entries by default, but you can use the filters to
quickly bring up those entries.

During the voting period for ranked jams, entries will be sorted randomly by
default, but you can select from additional sort options on the sidebar if
you're looking for something in particular.

After the rating period is over the results of the jams are instantly
calculated and available. A results page is made available where you can browse
how well games have done by the average of all the criteria and even by
individual criteria. You can also see the results for an individual game on the
game's submission page.

$image_carousel{
  "/static/images/jam/promo/thumb/rankings.png",
  caption = "Browsing results"
}


## Submission page

Each entry to a jam gets a dedicated submission page for that particular jam.
This page is separate from the project's main itch.io page. The jam's
submission page will provide a quick summary of the project, with quick links
to play or download, along with any jam-specific fields. This is also the page
where viewers can place their votes, and the results are published when the jam
is over.

Lastly, the submissions page has a comments thread where people are free to
leave feedback about the submission for that jam. These comments do not appear
on the project's main page, only on the page for the particular entry. If you
leave a comment on a submission, and have also submitted to the jam, a link to
your submission will automatically be included beneath your comment so people
can easily discover your project.

> Individual submission votes are never published. The score you give a project
> will remain private.

The submission page can be accessed by a link on the top right of the project's
page, or by clicking the project from the jam's entries page.

## Jam emails

Everyone who joins your jam is put on the jam's mailing list. You can use this
to email everyone who's participating. This is great if you have a reminder
message, updated rules, or maybe a theme announcement. Additionally, after the
jam is over, you could use the list to email the participants about future jams
or any other information about the completed jam.

When drafting a jam you can pick the recipients from the following groups:

* Everyone who has joined
* Those who have submitted
* Those who haven’t submitted

People who have left your jam, or are unsubscribed from emails from itch.io
will not receive your message.

### Automated messages

itch.io will send out an automated reminder email to all participants when a
jam starts reminding them that it's time to submit. It's not necessary for you
to send an email when the jam starts unless you need to announce additional
information, like a theme.

## Promoting your jam

We love seeing successful jams. We promote jams we think are interesting on our
homepage, social media accounts, and through email. If you want to be eligible
for promotion please make sure to fill out all the appropriate fields:
description, summary, cover image, etc. We watch for new jams every day so
we'll spot your jam once it's published.
 
If you're hosting a bigger event, or something you think we should know about,
[please get in touch][support]. We can help facilitate your jam, and make sure you have
the support you need to run it effectively.

## Create a jam today!

Now that you've seen what **itch.io** offers for creating game jams you can begin
creating your own:

<div class="button_row bottom">
<a href="/jams/new" class="button fat on_logged_in">Create a game jam</a>
<a href="/jams/new" class="button fat on_logged_out">Log in to create a game jam</a>
</div>

