# Written offer of corresponding source: osquery 5.24.1 as bundled in the OneGRC Collector host package

The package contains the official osquery 5.24.1 Linux release binary, which includes code licensed under the GNU General Public License version 2 and the GNU Lesser General Public License version 2.1 (see `THIRD-PARTY-NOTICES.md`).

**Offer.** For three years from the date you received this package, anyone who has it may obtain, for no more than the cost of distribution, a complete machine-readable copy of the corresponding source for osquery 5.24.1 and the libraries listed in `THIRD-PARTY-NOTICES.md`, by writing to the contact below. The source is the osquery repository at the tag `5.24.1` (https://github.com/osquery/osquery/tree/5.24.1) plus, for each library, the upstream commit that osquery pins at that tag, listed with its upstream URL in `osquery-5.24.1-sources.tsv`. `fetch-source.sh` downloads exactly those commits.

**Contact for this offer:** imvijaychaurasia@gmail.com (write with the subject "OneGRC osquery source offer"). The offer holder is the publisher of the OneGRC Collector.

**Where we keep the copy:** https://github.com/imvijaychaurasia/onegrc-third-party-sources/releases/tag/osquery-5.24.1 (a public release holding the 37 source archives listed in `SHA256SUMS`, unmodified upstream sources). The conditions of the Director's decision (2026-11-14) prefer shipping the archive beside the package; assembling it was tried on 2026-11-14: `fetch-source.sh` downloaded all 33 archives (the osquery tag and 32 pinned libraries) in a few minutes and the result is about 307 MB, small enough to keep next to each released package. Until the release owner names a place, the written offer stands.

**No modification.** The osquery binary in the package is byte-identical to the official release (its SHA-256 is in `THIRD-PARTY-NOTICES.md` and is checked by the build). If it is ever modified, the modification is published under the same licence and this notice is updated.
