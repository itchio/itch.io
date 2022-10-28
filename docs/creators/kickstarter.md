{
  title: "Distribute Kickstarter digital rewards"
  share_message: "itch.io makes digital reward distribution easy with its Kickstarter import"
  amp: true
}


**itch.io**'s Kickstarter import tool makes it easy to distribute digital
rewards by importing your backer list to grant each backer an itch.io download key with
files or Steam keys based on their pledge amount.

Once you've imported your backers you can easily send them a customized email
with their download URL using itch.io's contact tools.

$index

## Importing by CSV

To get started you'll need to export your backer list from your Kickstarter
project's edit page.

Once you've exported the file, head to the *Distribute* tab on your project's
dashboard page on itch.io. From there you can find *Kickstarter import* on the
sidebar.

<div class="image_caption_wrapper">
<img class="image_holder" src="/static/images/docs/kickstarter-import.png" alt="Kickstarter Import" />
<div class="image_caption">The Kickstarter import tool</div>
</div>

From the import page click *Select a CSV to import* to begin. You'll be
prompted to upload the CSV file you downloaded from the Kickstarter website.

### Creating backer groups

The CSV file you select contains all the emails and pledge amounts for each
backer. You can organize the backers into groups in order to assign them
different files.

By default, after choosing a file, you're given a single group. All backers in
the file will be included in this group.

<div class="image_caption_wrapper">
<img class="image_holder" src="/static/images/docs/kickstarter-backer-groups.png" alt="Editing backer groups" />
<div class="image_caption">Editing backer groups</div>
</div>

If you're curious about what backers will be included in a group you can click
*View list* link to see a list of all the included backers and their pledges.

You can configure which files are included in each group, along with enabling
external keys. Similar to download keys, you can control which files are
enabled by setting a price threshold, or by unlocking everything.

If you need more than one group, or need to create a minimum pledge threshold,
you can click the *Split backers by pledge amount...* to manually create a
group. The default group is replaced with one you've created. You can create as
many of these custom groups as you need. They work the same as the default
group, but with the ability to set a minimum price threshold.

The upper limit of a group is the automatically set to the next highest group.
With two groups created at $$5.00 and $$10.00, a backer who pledged $$11.00 will
receive a single key for the $$10.00 group.

### Getting the keys

After you've confirmed the group distribution, you can click *Create keys for
backers* to generate all the download keys. Each generated key is associated to
the backer's email address.

All successful imports are shown on the top of the Kickstarter import screen.
From there you can download a CSV file that contains the mapping of email
address to download key URL. If you have a system to send emails already then
you're free to distribute the keys yourself. If not, read on.

### Distributing keys through email

A Kickstarter import creates a *Download Key Group* for each group specified
during the import. You can see these groups if you navigate to the *Download
Keys* page within your project's dashboard.

Like any other key group, you can use our *Emails* tool to send an email to key
owners with a link to their key. Head to the *Interact* tab to find the email
editor. As you're drafting your email, just select the appropriate groups in
the recipients field.

Ensure the *Include download link at bottom of email* option is checked to
allow the recipients to get access to their new key

### Updating the import

If you need to add more backers then you can upload the updated export CSV file
and go through the import process just as before. Any email addresses that have
already been assigned keys will not have duplicate keys created.

## Importing through the Kickstarter API

We also support doing backer import through the Kickstarter API. We recommend
trying a CSV import first, it's completely self service. In order to use the
Kickstarter import you'll need to add the itch.io account as a contributor to
your project, with access to the backer list.

Once you've added us as a contributor we'll be notified and we'll contact you
about the next steps.

To start add the following email address as a contributor: 

> support@itch.io

## Need more control?

If you need more control over the import process then don't hesitate to
[contact us][support] and we'd be glad to work with you to make sure you import
and assign exactly what you need.


## Indiegogo

Our import tool also supports CSV exports from Indiegogo. All the same
functionality available for Kicksarter can be used, including splitting backers
into groups and emailing out keys.

## Custom import

Have a custom list of email address that you need to import and generate
download keys for? You can also use this tool. Just create a CSV file with the
following format: (You must include the column header)

    Email,Amount
    test@example.com,$10.00
    another@example.com,$12.00
    hello@example.com,$50.00


> In order to email any addresses you import, you must [contact
> support][support] to get your message approved.
