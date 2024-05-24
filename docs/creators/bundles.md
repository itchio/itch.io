{
  title: "Hosting a co-op bundle"
  share_message: "Round up games and sell them in a bundle with itch.io!"
  amp: true
}

A cooperative, or co-op bundle, on *itch.io* allows you to collaborate with
other developers to offer a collection of games from multiple accounts at a
single price for any period of time. Any developer on itch.io can organize and
publish a bundle. Just like games on itch.io, you maintain complete control
over how it's managed.

> If you're trying to sell a bundle of *just your own games*, you can do that
> with the [Sales & Promotions][sales] feature on itch.io. It is not necessary
> to create a co-op bundle unless you are combining content from multiple
> accounts.

<div class="button_row">
<a href="/developers" class="button fat on_logged_out">Get started with itch.io</a>
<a href="/dashboard/bundles" class="button fat on_logged_in">Create a bundle</a>
<div class="sub">or read on to learn more</div>
</div>

$index


## Getting started


Creating and published a co-op bundle is done in multiple stages. A single
itch.io account must act as the host and create the bundle on their their
dashboard. For the purpose of this guide, we'll assume that you're the host
unless otherwise specified.

1. **Creating the bundle** -- Fill out the *New Bundle* form with all the required fields, including the participating projects and the revenue distribution of all participants
2. **Participant approval** -- Each participant of the bundle must view the draft page of the bundle and approve that they wish to participate
3. **Publishing the bundle** -- After all participants have approved the bundle, the host is able to publish the bundle to set it live


### Creating the bundle

Locate the *Co-op bundles* section within the promotions area of your dashboard
and click on *Create a new co-op bundle* to begin. It's important to have all
the required information prepared before creating a bundle. Once you save the
new bundle, many of the fields are locked to prevent changes to the bundle
while the participants are reviewing it for approval.

The following fields can not be changed once creating the bundle:

1. Games & Projects
1. Purchase price
1. Participants & Participant cut
1. Start date & End date -- These fields only become locked if at least one participant has approved the bundle

The following fields can freely be changed, even during the duration of the bundle:

1. Title & Description
1. Bundle goal & Suggested price
1. Publish status -- The host can un-publish the bundle if there's a problem that needs the page to be taken down


> **Why are some fields locked?** -- During the approval period, we don't want
> participants to have any surprises about the promotion they are about to
> join. In order for the participant to confidently decide to join the bundle
> they need to see the final arrangement of the promotion. [itch.io
> staff](https://itch.io/support) may be able to make some changes to the
> bundle, but it may be easier to re-create the bundle if substantial changes
> need to be made.


Due to the complex nature of consolidating payments for multiple accounts,
prices are specified in USD. VAT will be automatically applied if required.

$image_carousel{
  "/static/images/developers/bundle_games.png",
  height=200
}


### Participant approval

A bundle cannot commence until **all the participants** have reviewed and
accepted it. Once every participant has given their approval, you, as the host,
will receive an email notification that it's ready to be made public.

For the participants to approve the bundle, you need to send the bundle's URL
to each participant. This URL isn't publicly accessible and can only be
accessed by accounts that are participants of the bundle. They will be able to
view the draft page of the bundle to review the duration and conditions. They
must click the approve button to confirm their participation.

For bundles that involve revenue splitting among multiple paid recipients, each
recipient must have an account that is eligible for the itch.io payout system.
Bundle payments **cannot** be split for accounts that are using the "Direct to
you" system. If an account on "Direct to you" accepts payments through a
bundle, they will need to complete account onboarding for payouts in order to
claim their balance. Please confirm with your participants that they are
eligible for itch.io payouts.


$link_btn{"Read more about payout modes", "https://itch.io/docs/creators/payments#payment-modes"}


> **Note:** We do not send notifications to participants when you create a
> bundle to avoid spam. Please only include participants in your bundle who you
> are in contact with and who you believe will accept it. Do not add random
> pages to the bundle in the hopes that they will join, as it's likely they won't. A
> single participant's rejection will prevent the bundle from being
> publishable.
> 
> If you wish to host a bundle with open submissions, please refer to the
> information below about using the Jam system to facilitate these submissions.


$image_carousel{
  "/static/images/developers/bundle_splits.png",
  height=150
}


### Publishing the bundle

After you're satisfied with the details of the bundle, and all participants
have approved the bundle, you are free to publish the bundle. The bundle can be
published before the start date, and the URL to the bundle will become publicly
available. Between the start and end date the bundle will be publishable.

A publicly available bundle is eligible to show up on [itch.io's bundles
page][browse-bundles].

Just like any other purchase on itch.io, an account is not required to purchase
a bundle, but the buyer will be given an option to register and attach their
purchase.


## Price tiers

Just like individual file pricing for game pages, itch.io lets you set
individual game prices for bundle participants. The revenue splits will be
proportionally adjusted based on the number of games that are included at the
purchase price.

On the bundle's review page the host and participants will be able to see each
tier and exactly what the split will be.


## Hosting a bundle with open submissions using a jam

You may have seen some of the larger bundles that itch.io has hosted where we
have an open submission period for participants. Utilizing our [Jams
functionality](https://itch.io/docs/creators/game-jams), you can create a
public page to collect and curate submissions that can be converted into a
bundle. Here's a overview of how that works:

1. Create a "jam" page for your bundle: Visit <https://itch.io/jams/new> to create a jam page dedicated to collecting submissions for your bundle. Please include as many details about the bundle as possible on this page so potential participants understand what they are submitting to. If you know the dates and price of your bundle, please include them in the description.

2. Set up the submission period: Utilize the jam's submission period to establish a specific time frame during which anyone can submit their game or project to be considered for the bundle.

3. Utilize ["Custom fields"](https://itch.io/docs/creators/game-jams#jam-customization/custom-fields) for additional information: "Custom fields" will require submitters to include additional information in a structured way. For example, if you have price tiers, you can ask them to indicate their desired tier. (Note that if any of the custom fields are to be used to control how entries are added to the bundle, please mention that when contacting us in step 6)

4. Curate submissions: As the host, it is your responsibility to curate the submissions. Use the "disqualify" tool provided to manage the eligibility of each submission for the bundle. Entries that are disqualified will not be included in the final bundle.

5. Create an "empty" bundle page: Prepare an "empty" bundle page that will be populated with all the submissions once the jam is processed. You can create this page by visiting <https://itch.io/bundle/new?allow_empty>. You must include the dates and pricing up-front. Please leave some time for processing before the start of the bundle: itch.io will need time to populate the bundle, and all participants will need to approve their participation. Save the URL of the newly created bundle for the next step.

6. Contact itch.io to synchronize the jam to the bundle: After you have hosted the jam and curated the submissions, [reach out to the itch.io team](https://itch.io/support) and provide them with the link to the jam and the link to the bundle. The itch.io team will review both links, and after approval, will manually process the jam to populate the bundle with all the verified submissions. By default, we will apply an equal revenue split between every participant. If you need custom rules applied, please tell us.

7. Use the jam's "email" tool to contact submitters: All participants of the bundle must approve the final bundle from the bundle's page. Use the "Email" tab on the Jam's edit page to share the link of the bundle to every submitter. All participants must approve of the bundle before it can be set live

8. Prune non-acceptees if necessary: In case there are participants who are unable to accept in time for the bundle, you can request the itch.io team to prune those participants. However, note that if a substantial portion of the bundle consists of non-acceptees, we may request you to start the participant approval process over to avoid misleading the other paticipants who may have already approved of the bundle.

9. Synchronizing submissions to the bundle after it has started: If you wish to include new participants in the bundle after it has already started, use the late-submit feature within the jam. After getting the participants added, contact the itch.io team to manually synchronize the new participants list to the bundle. By default, we will only add new entries to the bundle. In the rare circumstance that a submission needs to be removed, please tell us directly and explain the circumstances.

Please note that to collect earnings from a bundle on itch.io, the account must be eligible for [itch.io's payouts system](https://itch.io/docs/creators/payments#payment-modes). Accounts that are not eligible may be pruned from the bundle by itch.io staff if necessary.

## Hosting a charity bundle

You may have seen some bundles on itch.io where many members of our community
have come together to participate in a bundle where all proceeds are donated to
a charity.

> Here are some of the larger bundles we've helped host that utilized open submission to collect funds a charities:
> 
> * [Bundle for Racial Justice and Equality](https://itch.io/b/520/bundle-for-racial-justice-and-equality)
> * [Indie bundle for Palestinian Aid](https://itch.io/b/902/indie-bundle-for-palestinian-aid)
> * [Indie Bundle for Abortion Funds](https://itch.io/b/1472/indie-bundle-for-abortion-funds)
> * [Bundle for Ukraine](https://itch.io/b/1316/bundle-for-ukraine)
> * [TTRPGs for Trans Rights in Texas](https://itch.io/b/1308/ttrpgs-for-trans-rights-in-texas)


We're here to help facilitate these kinds of bundles, but we ask that you
collaborate with our team to ensure we understand the needs and risks
associated with the bundle before a large amount of money is collected.

1. **Use the Jams feature to organize submissions as described above.** Please include as much information as possible in the jam to ensure that participants understand what they're getting into. This information should include the charities involved, the duration of the bundle, and the estimated price. You can also utilize the jam as a method to gauge interest among participants.

1. Every charity (or monetary recipient) must be manually onboarded into the itch.io system to be able to receive payments. We request that **they are informed about the event before the bundle starts** so that any necessary due diligence can take place for all parties involved. As the host, please reach out to them to initiate the discussion. The results of your jam should give you an estimate of how many participants you have and how much you could potentially raise to help them understand the potential impact of the bundle.

1. Ensure all monetary recipients are fully onboarded for payment into the itch.io system before you begin collecting money for the bundle. **Do not initiate the bundle with your personal account as the recipient for payments unless you are prepared to accept full responsibility for the distribution of earnings collected on your account.**

1. Understand the [different payout modes][payments] so you can get an idea of how the charity will be paid. For bundles with a single recipient, we can often configure "Direct to you" payments so that the charity can immediately collect raised money. Otherwise, payments will be subject to our rules for payouts. In cases where a very large amount of money is collected, itch.io may need to delay the distribution of collected earnings for several months to allow balance adjusting events to settle. When we take on liability for large payouts, for the security of our platform, **we do not rush the transfer of funds**. We understand that sometimes charity bundles are hosted in reaction to tragic events currently happening in the world, please keep in mind payout timelines when designing your bundle to ensure we can meet the needs of the event.

1. Inform itch.io when you intend to publish the bundle and seek approval from our team. Certain backend settings may need adjustment for the bundle, particularly if it is of a large size, to prevent any reliability issues with the delivery of the bundle contents. Generally, for larger bundles priced lower, we will disable all access to External (Steam) keys to prevent participants from having to generate an unrealistic number of keys. We're more than willing to host bundles comprising well over 1,000 projects, but it's crucial that we are kept informed to ensure no issues disrupt the success of the event.

If you have more questions, please [contact our team][support], include the
text "Charity Bundle" in the subject of your message so that it may be
prioritized.


