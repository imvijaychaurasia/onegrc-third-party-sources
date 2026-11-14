# onegrc-third-party-sources

Unmodified upstream source archives for third-party software that ships inside the **OneGRC Collector**, kept here so that the corresponding source of GPL- and LGPL-licensed components is available to anyone who has received the Collector.

## What is here

| Component | Version | Licence of the component | Source |
|---|---|---|---|
| osquery | 5.24.1 | Apache-2.0 OR GPL-2.0-only (the osquery code itself); the official Linux release statically links libraries under the GPL, LGPL and permissive licences | release `osquery-5.24.1`: the osquery tag archive plus the archive of every library at the commit osquery pins at that tag (37 archives) |

* `SOURCE-OFFER.md`: the written offer of corresponding source and its contact.
* `THIRD-PARTY-NOTICES.md`: each library, its upstream, its pinned commit and its licence as the upstream publishes it.
* `licences/`: the osquery licence, the GPL-2.0 and LGPL-2.1 texts.
* `osquery-5.24.1-sources.tsv`, `fetch-source.sh`: the exact list and the script that downloaded the archives.
* `SHA256SUMS`: the SHA-256 of every archive in the release (`shasum -a 256 -c SHA256SUMS` after downloading the release assets into one folder).

## Honest limits

* **Unmodified.** The archives are exactly what the upstream projects publish for those commits. Nothing was patched.
* **GitHub archives omit git submodules.** Archives downloaded from GitHub for a commit do not include that repository's submodules; for the large super-project `boost` this means the archive is not the full Boost tree (Boost is under the permissive Boost Software Licence, so no source offer is owed for it). Libraries hosted elsewhere were cloned and archived with git.
* This repository is not a source repository for OneGRC itself and carries none of its code.

Questions about this offer: see `SOURCE-OFFER.md`.
