{
  title: "Distribute to your Patreon patrons"
  share_message: "Link your Patreon campaign to automatically distribute your files"
  amp: true
}

**itch.io**'s Patreon integration allows you to link your Patreon campaign to
your itch.io project page, enabling your patrons to claim access to your
itch.io project by connecting with their Patreon account. This feature is
available free of charge to anyone with an itch.io account.

The *Connect with Patreon* button is utilized to verify the authenticity of
your patrons before granting them access to your project. On itch.io, each
patron can claim a single *[download key]($url_for{"docs", splat =
"creators/download-keys"})*. These keys can be managed like any other download
key you might manually create, giving you control over access as you deem
appropriate.

$index

## Attaching your campaign

Attaching a Patreon campaign to your itch.io project is straightforward. Make
sure you have a [Patreon account](https://www.patreon.com) with an active
campaign, as well as an itch.io project page.

For any itch.io project you'd like to integrate with Patreon, navigate to *Edit
» Distribute » Patreon Access*. From there, you will be prompted to connect
your account with Patreon. This connection allows itch.io to access and read
your campaigns, enabling us to verify your patrons.

After linking an account, click on *Refresh Campaigns*. You should then see the
campaign associated with your Patreon account.

<figure class="image_caption_wrapper">
  <img class="image_holder" src="http://commondatastorage.googleapis.com/leafo/patreon-pick-campaign.gif" alt="Picking a Patreon campaign" />
</figure>

In addition to choosing your campaign, you can also specify a minimum pledge
amount and a currency. Only patrons who pledge at or above this amount will be
able to access a download key on itch.io.

> **Note**: It's important to make sure that the selected currency matches the
> primary currency used on your Patreon campaign. This ensures that a minimum
> price comparison is possible. If there is a discrepancy in the currency, no
> one will be able to claim a key for your itch.io page.

## Distributing to Backers

Once you've successfully linked your Patreon campaign to your itch.io project,
a claim URL will be displayed. This URL can be shared publicly and includes a
button that allows users to connect their Patreon account to itch.io. This
verifies their status as active backers and provides them with a Download Key
if their pledge meets the requirements. We recommend sharing this URL in an
update on your Patreon campaign page.

The URL looks like this:

    https://my-account.itch.io/my-game/patreon-access

## Managing Access

Patrons are given a unique download key when they claim your project. A
*download key* on itch.io is a special page that grants someone access to a
project. It can be attached to an itch.io account. 

All the download keys generated for Patreon campaigns are placed into a
*Download Key Group* called **Patreon**. You can view and manage these keys by
locating the group on your project's download keys page under *Edit »
Distribute » Download Keys*.

If you revoke a key for a patron, the same patron will not be able to generate
another access key. Each Patreon account may only generate a single download
key for their account.

If you disconnect a Patreon campaign from your project page, any existing
download keys will remain active. If you need to disable them, you can do so
from the *Download Keys* page for your project.
