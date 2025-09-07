# Sharkey CatchUp Plugin

Sharkey CatchUp is an experimental plugin for Misskey/Sharkey that provides a focused dashboard to review what you missed on your Home or Hybrid timelines. The plugin aggregates recent activity from the people you follow and offers tools to triage posts quickly.

## Features

- **Timeline contexts**: switch between Home and Hybrid timelines.
- **Time windows**: catch up on the last 3h, 6h, 9h, 12h, 18h, 24h, 36h or 48h of activity.
- **Filtering**: toggle Originals, Boosts, and Replies independently.
- **Author grouping**: avatars ordered by post count let you focus on one author at a time.
- **Top Links**: deduplicated list of links shared by followees, sorted by frequency.
- **Infinite pagination**: fetches up to the window boundary while respecting visibility, mutes, and blocks.
- **Local cache**: remembers the last successful fetch per context for faster reopen.
- **Error handling**: user‑friendly messages for auth, network, and server issues.
- **Keyboard shortcuts and accessibility**: basic shortcuts, ARIA labels, and RTL‑safe layout.

## Architecture

The project is planned to deliver three artifacts:

1. **User plugin** – full‑screen CatchUp view.
2. **AiScript widget** – compact summary with a button to open the plugin.
3. **Hosted installer page** – one‑click install URL with SHA‑512 hashes.

Data is fetched using `Mk:api` calls to `notes/timeline` (Home) or `notes/hybrid-timeline` (Hybrid)`.
Notes are classified as original, reply, renote, or quote and grouped by author. A Top Links panel extracts and counts URLs.

## Installation

This repository is in early development and does not yet publish build artifacts. Once available, installation will be via a hosted one‑click installer:

```
https://{HOST}/install-extensions?url={API_URL}&hash={SHA512}
```

## Development

The plugin and widget will be written in [AiScript](https://github.com/syuilo/ai-script) using Misskey's plugin APIs. The design document in `.codex_designDoc` contains the full specification and should be consulted before contributing.

## Acknowledgements

This project is inspired by the CatchUp view in [Phanpy](https://github.com/cheeaun/phanpy), a minimalistic Mastodon web client by [Lim Chee Aun](https://github.com/cheeaun) and [contributors](https://github.com/cheeaun/phanpy/graphs/contributors), released under the [MIT License](https://github.com/cheeaun/phanpy/blob/main/LICENSE). Their work on Phanpy's design and user experience guided the approach taken here.

## License

TBD

