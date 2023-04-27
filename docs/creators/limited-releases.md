{
  title: "Limited Playtests & Releases"
  share_message: ""
  amp: true
}

**itch.io** provides a flexible set of tools to run limited playtests so
developers can distribute their games in progress, build a real community, and
gain valuable feedback.

$index

## Why Not Eary Access?

We've seen developers adopt an early access program as a way of collecting
playtesting feedback and starting a source of revenue. There are a few problems
with this approach:

* **Your game is publicly available** -- You've launched something you know isn't perfect, and not everyone who plays it will be understanding. You may be swamped with negative feedback and bad reviews that may damage the future success of the game.
* **You've officially launched your game** -- The day you launch your game is one of the most important days in your game's lifespan: it's typically when you'll have the most people watching, talking, and buying. Very rarely do we see games leaving early access getting attention comparable to their initial launch.

For some developers, these may not be an issue, but it's an awfully big risk to
take. Launching something incomplete may jeopardize the success of the entire
project.

**itch.io** project pages provide a wide range of access controls to give
developers a staging area for their launch, and allow them to roll out their
project in the way that works best for their project. You can create your own
distribution model: Limited keys, closed and open playtesting environments,
tiered purchases, and digital rewards are all possible.

> **Can I still launch an early access project on itch.io?** Of course, you're
> free mix-and-match the tools we provide to launch your game in the way you
> want. This page is highlighting some of the other options we provide if you
> want to customize how you launch your game.

## The Toolset

Here is a quick overview of some of the features we provide that allow you to
get the most control over how you roll out your game or project.

### Limited Keys

Our [Exclusive content][exclusive-content] system lets you set quantity
restricted rewards for people who purchase your game. You can provide a price
point, and set the maximum quantity. You can create multiple tiers if you have
different things to offer.

$link_btn{"Learn about exclusive content",
  $url_for{"docs", { splat = "creators/exclusive-content" }}}

### Closed Playtesting

Our [Access Control][access-control] settings allow you to fine-tune who can
access your project's page and sub-pages. The spectrum ranges from fully
restricted to a list of people you specify use, to a password protected page, a
secret URL, or completely open.

Limited keys will let you give access to just your most interested fans, the
people who will most likely be giving you the best feedback.

You can even apply the same access control to your community: only people
you've invited or people who have bought your game can have access.

$link_btn{"Learn about access control",
  $url_for{"docs", { splat = "creators/access-control" }}}

### Binary Patching and Game Distribution

itch.io hosts all the files for your game. It's not necessary to use
third-party file hosts to share access to private builds. We've custom built an
entirely new distribution platform with binary patching, it's called
[wharf](https://itch.io/docs/wharf/).

**For developers**: you can update your game frequently, and only upload what's
changed. We've provided command lines tools that are simple to integrate into
your workflow. You shouldn't be penalized to send a new build to your testers
just because your game is big. Our tools support resumable uploads for when
you're deploying without reliable internet.

**For game players**: you'll be able to utilize the patching system to have the
most up to date version without having to re-download every time. Users of [our
app](/app) will get automatic updates.

Having an efficient way to distribute builds is crucial: if your players have
to download a large build every time they're likely to lose interest.
Additionally, you'll be hesitant to push frequently, hurting your ability to
iterate on new ideas.

With [butler](https://itch.io/docs/butler/), our command line tool, these
problems no longer exist.

### Tiered Purchases

Give your early supporters access to something special with our tiered purchase
and reward system. Any files you upload can be [configured to unlock at
specific price points][pricing]. If you have digital rewards then you can start
selling them as part of your gradual release.

Our [exclusive content][exclusive-content] system lets you offer limited
quantity rewards, whether it's a digital appearance in your game or physical
merchandise, we've got you covered.

$link_btn{"Learn more about pricing your content",
  $url_for{"docs", { splat = "creators/pricing" }}}

### Communities

A healthy developer-player relationship is critical for refining a game for its
launch. Being able to effectively collect feedback, while also engaging with
your audience, will give you a huge advantage.

itch.io’s community tools give you a way to quickly attach a discussion to any
project page. The community tools are fully featured: you can moderate posts,
elect moderators, handle bans & blocks, report posts, subscribe to topics, etc.

$link_btn{"Learn more about interacting with your fans",
  $url_for{"docs", { splat = "creators/interact" }}}

