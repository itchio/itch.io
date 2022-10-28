{
  title: "Distribute to your Patreon patrons"
  share_message: "Link your Patreon campaign to automatically distribute your files"
  amp: true
}

**itch.io**'s Patreon integration allows you to connect your Patreon campaign
to your itch.io project page and allow your patrons to claim access to your
itch.io project by connecting with their Patreon account. This functionality is
freely available to anyone with an itch.io account.

The *Connect with Patreon* button is used to verify the authenticity of your
patrons before giving them access to your project. On itch.io, each patron can
claim a single *[download key]($url_for{"docs", splat = "creators/download-keys"})*. The keys can be managed like any other download
key you might manually create, so you can control access as you see fit.

$index

## Attaching your campaign

Attaching a Patreon campaign to your itch.io project is simple. If you haven't
already, [create a Patreon account](https://www.patreon.com) and publish your
campaign on Patreon.

The next step is to link your Patreon creator's account to itch.io.

For any itch.io project you'd like to use Patreon with, navigate to *Edit »
Distribute » Patreon Access*. From there you'll be prompted to connect your
account with Patreon. This will give itch.io access to read your campaigns so
we can check who your patrons are.

After linking an account, select *Refresh Campaigns* and you should see the
Campaign associated with your Patreon account.

<figure class="image_caption_wrapper">
  <img class="image_holder" src="http://commondatastorage.googleapis.com/leafo/patreon-pick-campaign.gif" alt="Picking a Patreon campaign" />
</figure>

> In the future, we'll add support for sharing campaigns across itch.io
> accounts, if you need this sooner [please send us an email][support].

In addition to selecting your Campaign, you can select a minimum pledge amount.
Only patrons that pledge at or above the amount will be able to get access to a
download key on itch.io

## Distributing to backers

Patrons can claim access to your project by heading to the Patreon claim page.
After you configure a Patreon campaign on your project, you'll be shown the
URL. The URL looks the same for everyone, and only works for your patrons, so
you can safely share the URL with everyone. We putting it in a post on your
Patreon campaign page.

The URL looks like this:

    https://my-account.itch.io/my-game/patreon-access

## Managing access

Patrons are given a unique download key when they claim your project. A
*download key* on itch.io a special page that gives someone access to a
project. It can be attached to an itch.io account. 

All the download keys generated for Patreon campaigns are placed into a
*Download key group* called **Patreon**. You can view and manage the these keys
by locatin the group on your project's download keys page under *Edit »
Distribute » Download Keys*.

If you revoke a key for a patron, the same patron will not be able to generate
anouther access key. Each Patreon account may only generate a single download
key for their account.

If you disconnect a Patreon campaign from your project page, any existing
download keys will stay active. If you need to disable them you can do it from
the *Download keys* page for your project.

## Need more?

Are you looking for finer control over how you connect your Patreon and itch.io
pages? We'd love to help, [send us a message][support].


