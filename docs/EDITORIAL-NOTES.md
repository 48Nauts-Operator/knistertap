# Policy and mission editorial notes

Drafted 9 September 2026. The requested drafts are in `privacy.en.md`, `privacy.de.md`, `terms.en.md`, `terms.de.md`, and the legal-notice files. Edit `content/policies.mjs` and rebuild to keep the website and documents consistent. These are working drafts, not an assertion that the venture is compliant or that the text is ready to publish.

## Confirmed by the maker

- Brand: Knistertap (working name).
- Website domain: https://knistertap.com.
- The maker confirmed there are no sales, orders or payments on the website; it showcases games and provides support.
- Support/privacy contact: support@knistertap.com (supplied by the maker).
- Website analytics: Umami only; script connected, instance operator and hosting details pending.
- Operator: Candoo Labs / Wolke.
- Public address: Zaehlerweg 5, 6300 Zug, Switzerland.
- Mission: enjoyable daily mental challenges, vocabulary, focus, and independent judgment in the age of AI.
- Founder interest: building and investigating apps that might support people with cognitive difficulties; effectiveness needs validation.
- Approved headline: “A little play. A brighter day.”

The supplied operator name is preserved verbatim. A registered entity type, trade-register number, VAT number, and full individual legal name have not been inferred.

## Still needed to finalize the drafts

1. Any applicable registration or representative details. The maker selected 9 September 2026 as the effective date.
2. Hosting/CDN and email providers; processing countries; actual log fields; retention and backup periods; any international-transfer safeguards required for the chosen services.
3. Release-level confirmation of ads, analytics, purchases, subscriptions, cloud services, diagnostics accessed through Apple, and all third-party SDKs for each game.
4. Intended ages and countries, whether children are specifically targeted, and appropriate safeguards for the actual data flows. A store age rating is not a substitute for that assessment.
5. Final legal bases where GDPR applies, operational handling of data requests, and market-appropriate contract acceptance, warranty, liability, and governing-law review.

There is no invented blanket “we collect no data,” no arbitrary liability cap, and no automatic enrolment in research. Specific retention periods have deliberately not been guessed.

## Wörtli source observations

Inspected the current `Woertli/Game.swift`, `ContentView.swift`, `GameCenter.swift`, and `App.swift` under `factory/00-PlayGround/MegaGame/Woertli/Woertli`.

- UserDefaults/AppStorage hold daily puzzle state, submitted guesses, statistics, streak information, and the help flag.
- Practice-round guesses are not persisted by this code.
- `GameCenter.authenticate()` runs on appearance. The leaderboard sign-in sheet is deferred, but an already authenticated player can have a score submitted at the end of a daily round.
- Daily results submit the guess count and streak, including a loss result. Sharing is not limited to pressing the leaderboard button.
- The share action passes an emoji result summary to the user's chosen destination.
- Source integration does not prove the leaderboard IDs have been configured in App Store Connect. A source review also does not prove a release has no additional SDKs or platform-side diagnostics.

## Primary references

The policy structure follows the transparency topics identified in the [FDPIC’s privacy-statement guidance](https://www.edoeb.admin.ch/en/privacy-statements-on-the-internet). Unknown provider and retention details remain explicit editorial questions.

The international-processing section calls for destination countries and relevant safeguards, consistent with the [FDPIC’s explanation of the duty to provide information](https://www.edoeb.admin.ch/en/duty-to-provide-information).

Apple explains that privacy disclosures must account for the app and integrated partners in its [App Privacy Details guidance](https://developer.apple.com/app-store/app-privacy-details/). The shared website policy should complement the actual disclosures in App Store Connect.

Apple describes Game Center profile, activity, and score handling in its [Game Center privacy notice](https://www.apple.com/legal/privacy/data/en/game-center/). The app-specific submission triggers above come from the local code, not from a general assumption about Game Center.

Apple's [Standard EULA](https://www.apple.com/legal/internet-services/itunes/dev/stdeula/) remains distinct from the proposed website/service terms. The draft does not attempt to reproduce it or replace it with an incomplete custom licence.

## Mission wording

The site expresses the founder’s motivation and research questions. It does not attribute Swiss literacy trends to AI or social media, because that causal claim has not been established here. It also does not promise memory improvements or treatment outcomes from Wörtli.

The [National Institute on Aging’s cognitive-health guidance](https://www.nia.nih.gov/health/cognitive-health-and-older-adults?topics=18) distinguishes findings from specific training research from unproven claims about commercial brain-training apps. Knistertap's personal mission should not be presented as evidence of clinical effectiveness.

## Research FAQ and operator placement — 9 September 2026

The operator asked for the name and postal address to appear only in the Impressum. Support and both policy introductions now link directly to that page. No owner/address block appears on the homepage, support page, Privacy Policy, or Terms of Service. Final policy review should include this linked disclosure arrangement.

The homepage and support FAQ share English/German content in `copy[lang].brainFaq`; rebuilding also creates `faq.en.md` and `faq.de.md`.

- [Shabahang et al. (2024)](https://doi.org/10.1016/j.chbr.2024.100438): cross-sectional convenience samples of 620 Iranian and 180 US university students. Doomscrolling was associated with existential anxiety. This does not establish causality, generalize to all scrolling, demonstrate brain damage, or show a game reverses the association.
- [Raichlen et al. (2022), PNAS](https://pmc.ncbi.nlm.nih.gov/articles/PMC9436362/): observational UK Biobank study of 146,651 adults aged 60+, with self-reported TV/computer use and subsequent dementia diagnoses. More TV was associated with higher risk. No game intervention, no causal proof, and no 45-year threshold. The study population’s minimum age is not a biological cutoff.
- [WHO dementia factsheet](https://www.who.int/news-room/fact-sheets/detail/dementia): age is the strongest known risk factor; dementia is more common at 65+, while social isolation and cognitive inactivity are additional risk factors. No claim that men over 45 develop dementia because they communicate less.
- [NIA cognitive-health guidance](https://www.nia.nih.gov/health/brain-health/cognitive-health-and-older-adults): specific cognitive-training findings do not establish equivalent effects for commercial brain-training apps. Knistertap has no game-specific clinical validation.

Use “a little moment of active thinking” and “a puzzle break.” Do not describe the product as brain detox, proven dementia prevention, or keeping the brain young. Reading, chess, conversation and movement are examples of an engaged day, not a treatment prescription. No numerical Swiss TV statistic was added: a search excerpt did not provide enough accessible methodology to choose an unambiguous population metric.

## Umami setup

Only Umami is authorized for website analytics. The supplied script `https://wave.21nauts.com/script.js` and website ID `59e34c79-c9e1-4936-b4e7-48d98fd0b556` are now wired into the shared HTML head. Collection is restricted to `knistertap.com` and `www.knistertap.com` through `data-domains`; full English/German pages and the root homepage include one script, while redirect-only pages omit it. Preview mode still keeps policy draft labels and noindex, but does not disable analytics on the public domain. Confirm processing location, provider, data fields and retention rather than assuming Umami Cloud or self-hosting. The [official FAQ](https://docs.umami.is/docs/faq) describes a cookieless tracker; this alone is not a finding about all personal-data processing or legal consent requirements. Website analytics choices do not establish the SDK inventory of the iOS apps.

## Impressum completion — 9 September 2026

The operator notice now contains the supplied operator name, full postal address, email, website and update date in both languages. Empty registration, VAT and representative placeholders were removed from the public notice; no absence of registration or VAT liability has been asserted. If applicable identifiers or a fuller legal identity are supplied, add them to this notice only. Other policy drafts retain their remaining editorial notes; `legal.draft = false` does not set the site-wide `legalReviewed` release flag.

[SECO’s account of Article 3(1)(s) UWG](https://www.seco.admin.ch/de/vor-dem-kauf-und-vertragsabschluss) requires clear identity and contact details including email for e-commerce providers. Its [broader webshop guidance](https://www.kmu.admin.ch/de/informationen-ueber-den-betreiber) also lists a contact person, phone and UID. The current game showcase has no website checkout. This cleanup does not certify the entity’s legal identity or every obligation for future sales and other target markets.
