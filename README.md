# Knistertap

A playful, bilingual website for the games of Candoo Labs / Wolke. Designed in the user's open [Paper project](https://app.paper.design/file/01M2308MP5PXCKN60QH0DPQBKZ/1-0), then implemented as static HTML and CSS. The headline is **A little play. A brighter day.** The mission is **AI can do more. Let’s keep thinking, too.**

## Preview

Requires Node.js 22 or newer. No npm dependencies are needed.

```sh
npm run dev
```

Open http://127.0.0.1:5188. The server binds only to this Mac. Rebuild with `npm run build` after editing content or CSS; `npm start` serves the existing build. Generated files live in `dist/`.

## Pages and content

English and German each have a homepage, Wörtli detail page, support page, Privacy Policy, Terms of Service, and legal notice. Both homepages include the founder's purpose and an expandable note about exploratory work involving cognitive difficulties. Game Center, app-store availability, and product benefits are not invented. Wörtli is marked in development and has no fabricated download link.

- `content/site.mjs`: branding, owner details, email/domain configuration, game registry, and bilingual site copy.
- `content/policies.mjs`: editable English/German policy drafts. These are the shared source for the rendered policy pages and Markdown documents.
- `docs/`: generated policy and mission documents, plus editorial notes.
- `public/assets/site.css`: responsive implementation of the Paper design.
- `design/`: exact Paper JSX/style exports, artboard manifest, visual checks, and browser verification results.

The current game catalogue contains Wörtli. Add future games with their own metadata, localized copy, detail rendering, and privacy section; the starter renderer currently supplies Wörtli-specific content. The second shelf card is a future-work teaser, not an invented second release.

Umami is the only selected website analytics tool. Its script URL and website ID are still needed; the current preview sends no analytics and loads no runtime JavaScript. The choice and pending connection fields are recorded in `site.analytics`; tracking is not yet wired into the build. Fonts and artwork are self-hosted, with no advertising trackers, newsletter form, or external embedded media. Native details elements provide mobile navigation, FAQ disclosure, and the research note. The privacy draft records the planned Umami use and the deployment details still to fill in.

## Policy drafts

The owner is **Candoo Labs / Wolke, Zaehlerweg 5, 6300 Zug, Switzerland**, as supplied by the user. The support/privacy email is **support@knistertap.com**. The name and postal address appear only in the legal notice; Support, Privacy and Terms link there. The website domain is **https://knistertap.com**, with GitHub Pages selected for hosting. Hosting data-handling details, Umami instance details, retention periods, intended age groups and commercial features still need to be completed. The documents mark those gaps instead of inventing them.

The Terms of Service supplement website/service use. They are not a replacement custom Apple EULA. The Privacy Policy has a Wörtli-specific section grounded in the inspected source, including automatic Game Center submissions when authenticated.

`npm run build` creates a preview with noindex metadata and a disallow-all robots file. `npm run build:release` checks that a support email, HTTPS domain, and reviewed policies without editorial placeholders are present. That check is not a legal compliance determination. Neither command deploys or registers a domain.

## Validation

The browser check covers 12 localized pages at 390, 768, and 1440 pixels, mobile navigation, FAQ disclosure, local assets, console errors, and internal links. Results are saved in `design/verification.json`. Screenshots are design-review artifacts, not app-store screenshots.

## Publishing — same flow as xnaut.dev

1. Commit website changes to `main`.
2. Run `npm run publish:site`. This pushes `main` to Forgejo first and then to GitHub, stopping if either push fails.
3. The GitHub push runs `.github/workflows/pages.yml`, which builds the website and deploys `dist/` to GitHub Pages.

Remotes use the same configured SSH aliases as the existing xnaut.dev website:

- `forgejo`: `forgejo:48Nauts/Knistertap.git` (Cosmos, port 2222).
- `origin`: `git@github-com-48Nauts:48Nauts-Operator/knistertap.git` (GitHub publication mirror).

The full server URLs are `ssh://git@cosmos.tail138398.ts.net:2222/48Nauts/Knistertap.git` and `git@github.com:48Nauts-Operator/knistertap.git`. The aliases select the existing SSH keys on the maker’s Mac. Other machines can use those full URLs with their own authorized keys. The script does not automatically commit uncommitted changes or force-push either repository.

One-time GitHub setup: [Settings → Pages](https://github.com/48Nauts-Operator/knistertap/settings/pages), then choose **GitHub Actions** as the source. Enter **knistertap.com** under Custom domain and save it. Enable Enforce HTTPS when available. After enabling Pages, rerun a failed initial deployment from the Actions tab if necessary. The intended website URL is `https://knistertap.com`; the default Pages URL is `https://48nauts-operator.github.io/knistertap/`.

Pushes build the current preview, retaining policy draft labels and noindex metadata. A deployed preview is publicly accessible; noindex is not access control. The manual workflow offers a `release` build, which uses the existing release checks and requires remaining policy placeholders to be resolved. Set the push default to `release` when the launch content is final.

The workflow reads the Pages base path automatically, supporting the repository URL and a later custom domain. To test a repository-path build locally, use `KNISTERTAP_BASE_PATH=/knistertap npm run build`; run `npm run build` again for the normal local preview at `/`. Fonts, image URLs, language links and redirects support both paths.

Configure a custom domain in GitHub Pages settings and at the DNS provider. Publishing does not change DNS or email records. With Actions deployments, a CNAME file is not needed. GitHub Pages hosts the static website; Umami and email remain separate services.

The reference implementation is `../xnaut/.github/workflows/pages.yml` and its `scripts/publish-receipts.sh`, which pushes `forgejo main` before `origin main`. Knistertap adds a Node build because its HTML is generated from bilingual content files.

Sources: [GitHub custom Pages workflows](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages), [custom domains](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages/managing-a-custom-domain-for-your-github-pages-site). GitHub’s [Pages documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages) says visitor IP addresses are logged for security purposes; include that hosting disclosure in the final public privacy policy.
