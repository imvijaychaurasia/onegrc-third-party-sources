# Third-party notices: osquery 5.24.1 (official Linux release, bundled unmodified)

The OneGRC Collector host package contains the **official, unmodified osquery 5.24.1 release binary** (Linux x86_64 sha256 `31435ee69c43449eba612d0f3df3f2bccfe59805ab9a14fadc550bdc34814f2e`, aarch64 sha256 `121246c1c0f798dde5218d308f56e112d44f2b81fb28d215ebc5ed932a8c9bed`; tarballs published at https://github.com/osquery/osquery/releases/tag/5.24.1). osquery runs as its own process; no OneGRC code is linked with it and no osquery library is imported.

osquery's own code is licensed **Apache-2.0 OR GPL-2.0-only** (texts in `licences/`). The Linux release statically combines osquery with the libraries below, some under the GNU GPL and LGPL; the GPL-2.0 and LGPL-2.1 texts are in `licences/`. The release binary is therefore redistributed under the terms of the GNU General Public License version 2 (and the LGPL for the LGPL libraries). Recipients may rebuild and relink from the corresponding source named in `SOURCE-OFFER.md`.

The list is osquery's own (`libraries/cmake/source/` at the tag 5.24.1); the commit of each library is the one osquery pins at that tag (read from the repository on 2026-11-14); the licence column states what each upstream project publishes and is to be verified against the source archives before anyone relies on it.

| Library | Upstream | Pinned commit (osquery 5.24.1) | Licence as the upstream publishes it | In the Linux binary |
|---|---|---|---|---|
| augeas | https://github.com/hercules-team/augeas | d133d9786350f1560c2f36d49da07d477c52aa76 | LGPL-2.1-or-later | **copyleft, statically linked** (symbols confirmed in the binary) |
| aws-sdk-cpp | (vendored in the osquery repository) |  | Apache-2.0 | permissive, Apache-2.0 |
| boost | https://github.com/boostorg/boost | 9d3f9bcd7d416880d4631d7d39cceeb4e8f25da0 | BSL-1.0 | permissive, or dual-licensed and taken under the permissive option |
| bzip2 | https://github.com/osquery/third-party-bzip2 | 6a8690fc8d26c815e798c588f796eabe9d684cf0 | bzip2 licence (BSD-style) | permissive, or dual-licensed and taken under the permissive option |
| dbus | https://gitlab.freedesktop.org/dbus/dbus.git | 5ff925648e88ba29cef7d708bc2bbc5d6de5fc48 | AFL-2.1 OR GPL-2.0-or-later | permissive, or dual-licensed and taken under the permissive option |
| ebpfpub | https://github.com/trailofbits/ebpfpub | 8d56c802cb0d655a6794d96ae20df6f6a8fcf385 | Apache-2.0 | permissive, or dual-licensed and taken under the permissive option |
| gflags | https://github.com/gflags/gflags | e171aa2d15ed9eb17054558e0b3a6a413bb01067 | BSD-3-Clause | permissive, or dual-licensed and taken under the permissive option |
| glog | https://github.com/google/glog | 8f9ccfe770add9e4c64e9b25c102658e3c763b73 | BSD-3-Clause | permissive, or dual-licensed and taken under the permissive option |
| googletest | https://github.com/google/googletest | 6910c9d9165801d8827d628cb72eb7ea9dd538c5 | BSD-3-Clause | not in the Linux release binary |
| krabsetw | https://github.com/microsoft/krabsetw.git | db46f40cb4b66308cd8637a9d35245d303913069 | MIT | not in the Linux release binary |
| libarchive | https://github.com/libarchive/libarchive | 27cbc7827172698143e440801fc0ba39ccb4f1f5 | BSD-2-Clause | permissive, or dual-licensed and taken under the permissive option |
| libaudit | https://github.com/linux-audit/audit-userspace | 20204ccf43e856818d7ef695242192b3f5963aae | LGPL-2.1-or-later | **copyleft, statically linked** (not confirmed by symbols in this build; treated as linked) |
| libcap | https://kernel.googlesource.com/pub/scm/libs/libcap/libcap.git | 9eb56596eef5e55a596aa97ecaf8466ea559d05c | BSD-3-Clause OR GPL-2.0 | permissive, or dual-licensed and taken under the permissive option |
| libcryptsetup | https://gitlab.com/cryptsetup/cryptsetup.git | 0ba577666c62bb3c82e90f3c8dd01f3f81a26cf4 | LGPL-2.1-or-later | **copyleft, statically linked** (symbols confirmed in the binary) |
| libdevmapper | https://github.com/lvmteam/lvm2 | 88f15659374042f7657d73393f73e267d752b4e1 | LGPL-2.1 | **copyleft, statically linked** (symbols confirmed in the binary) |
| libdpkg | https://github.com/osquery/third-party-libdpkg | e61f582015a9c67bbb3791cb93a864cfeb9c7151 | GPL-2.0-or-later (dpkg) | **copyleft, statically linked** (symbols confirmed in the binary) |
| libgcrypt | https://github.com/osquery/third-party-libgcrypt.git | 80fd8615048c3897b91a315cca22ab139b056ccd | LGPL-2.1-or-later | **copyleft, statically linked** (symbols confirmed in the binary) |
| libgpg-error | https://github.com/osquery/third-party-libgpg-error.git | c1668f61c58ea6f0439e5193d83b4e2ac622b286 | LGPL-2.1-or-later | **copyleft, statically linked** (not confirmed by symbols in this build; treated as linked) |
| libiptables | https://github.com/osquery/third-party-iptables | 1447b15100fe73810237809c1d4ade3c861b6d96 | GPL-2.0 | **copyleft, statically linked** (not confirmed by symbols in this build; treated as linked) |
| libmagic | https://github.com/file/file | 4cbd5c8f0851201d203755b76cb66ba991ffd8be | BSD-2-Clause | permissive, or dual-licensed and taken under the permissive option |
| librdkafka | https://github.com/confluentinc/librdkafka | c58bbed850ebe1cc493259d11e4de6ca930d5120 | BSD-2-Clause | permissive, or dual-licensed and taken under the permissive option |
| librpm | https://github.com/rpm-software-management/rpm | 9fc611e38004b1ddaa6668297408649ed556c157 | GPL-2.0-or-later OR LGPL-2.0-or-later (rpm) | **copyleft, statically linked** (not confirmed by symbols in this build; treated as linked) |
| libudev | https://github.com/systemd/systemd | b3eccdce81d18ec36c6ea95ac161002fc33d1810 | LGPL-2.1-or-later (systemd) | **copyleft, statically linked** (symbols confirmed in the binary) |
| linenoise-ng | https://github.com/arangodb/linenoise-ng | 4754bee2d8eb3c4511e6ac87cac62255b2011e2f | BSD-2-Clause | permissive, or dual-licensed and taken under the permissive option |
| lz4 | https://github.com/lz4/lz4.git | 5ff839680134437dbf4678f3d0c7b371d84f4964 | BSD-2-Clause (library) | permissive, or dual-licensed and taken under the permissive option |
| lzma | https://github.com/tukaani-project/xz | 03c51c5c08fe3579d8bbc8eea8251a1128001330 | 0BSD / public domain (xz liblzma) | permissive, or dual-licensed and taken under the permissive option |
| modules | (vendored in the osquery repository) |  | ? | not in the Linux release binary |
| popt | https://github.com/rpm-software-management/popt.git | 916e61045d268f7e37ade5ec047eb77e8299e6ad | MIT | permissive, or dual-licensed and taken under the permissive option |
| rapidjson | https://github.com/Tencent/rapidjson | 1a825d24fa322a5fe721624b2ed7a18b6de9b48a | MIT | permissive, or dual-licensed and taken under the permissive option |
| rocksdb | https://github.com/facebook/rocksdb | 51b540921dd7495c9cf2265eb58942dad1f2ef72 | Apache-2.0 OR GPL-2.0 | permissive, or dual-licensed and taken under the permissive option |
| sleuthkit | https://github.com/sleuthkit/sleuthkit | 01de0345edaa1ebf21dba6939a7c6bc7129e6e7d | CPL-1.0, IPL-1.0 and GPL-2.0-or-later (mixed) | **copyleft, statically linked** (symbols confirmed in the binary) |
| sqlite | https://github.com/osquery/third-party-sqlite | 3341b40a45585b7854b20a8acff944c7668cf7e8 | public domain | permissive, or dual-licensed and taken under the permissive option |
| thrift | https://github.com/apache/thrift | 27e8a425ffb498e190df3a12e239326bf5ba9ed6 | Apache-2.0 | permissive, or dual-licensed and taken under the permissive option |
| util-linux | https://git.kernel.org/pub/scm/utils/util-linux/util-linux.git | 88a1d6f1812ab05fedc75e295368ff6198e63d89 | LGPL-2.1-or-later (libblkid); BSD-3-Clause (libuuid) | **copyleft, statically linked** (symbols confirmed in the binary) |
| yaml-cpp | https://github.com/jbeder/yaml-cpp.git | c3f81127320662deb3e28f4da0a511f1faecd860 | MIT | permissive, or dual-licensed and taken under the permissive option |
| yara | https://github.com/VirusTotal/yara | 7ff39042be5c63682a037e13a75221d59393cf8b | BSD-3-Clause | permissive, or dual-licensed and taken under the permissive option |
| zlib | https://github.com/madler/zlib | da607da739fa6047df13e66a2af6b8bec7c2a498 | zlib | permissive, or dual-licensed and taken under the permissive option |
| zstd | https://github.com/facebook/zstd | 83b51e9f886be7c2a4d477b6e7bc6db831791d8d | BSD-3-Clause OR GPL-2.0 | permissive, or dual-licensed and taken under the permissive option |

The osquery package also ships the Augeas lens files (`share/osquery/lenses`, LGPL-2.1-or-later; the files are their own source), a Mozilla CA certificate bundle (`certs.pem`, MPL-2.0) and example query packs (Apache-2.0).
