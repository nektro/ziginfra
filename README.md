# ziginfra

meta monorepo to run tasks across all my zig repositories at once

> Note: this repo isn't really open for contribution, but it remains public as a resource for any who wish to view it.

### run zig

```
$ zig build test -freference-trace --summary all
```

### run zigmod

```
$ ./doall.sh zigmod fetch
```

### only refresh deps.zig

```
$ ./doall.sh zigmod fetch --no-update
```

### commit changes

```
$ zigmod-search-changes
```

### push changes

```
$ zigmod-commit-changes
```

## packages under maintenance

- https://github.com/nektro/zigmod
- || [REDACTED] ||
- https://github.com/nektro/arqv-ini
- https://github.com/nektro/gimme
- https://github.com/nektro/iguanaTLS
- https://github.com/nektro/zfetch
- https://github.com/nektro/zig-ansi
- https://github.com/nektro/zig-bencode
- https://github.com/nektro/zig-color
- https://github.com/nektro/zig-cookies
- https://github.com/nektro/zig-detect-license
- https://github.com/nektro/zig-expect
- https://github.com/nektro/zig-extras
- https://github.com/nektro/zig-flag
- https://github.com/nektro/zig-fmt-valueliteral
- https://github.com/nektro/zig-git
- https://github.com/nektro/zig-htmlentities
- https://github.com/nektro/zig-iana-tlds
- https://github.com/nektro/zig-icu
- https://github.com/nektro/zig-inquirer
- https://github.com/nektro/zig-intrusive-parser
- https://github.com/nektro/zig-iso-3166-countrys
- https://github.com/nektro/zig-iso-639-languages
- https://github.com/nektro/zig-js
- https://github.com/nektro/zig-jws
- https://github.com/nektro/zig-jwt
- https://github.com/nektro/zig-json
- https://github.com/nektro/zig-leven
- https://github.com/nektro/zig-licenses
- https://github.com/nektro/zig-licenses-text
- https://github.com/nektro/zig-mime
- https://github.com/nektro/zig-nfs
- https://github.com/nektro/zig-nio
- https://github.com/nektro/zig-oauth2
- https://github.com/nektro/zig-pek
- https://github.com/nektro/zig-signal
- https://github.com/nektro/zig-sys-linux
- https://github.com/nektro/zig-time
- https://github.com/nektro/zig-tracer
- https://github.com/nektro/zig-ulid
- https://github.com/nektro/zig-unicode-uca
- https://github.com/nektro/zig-unicode-ucd
- https://github.com/nektro/zig-UrlValues
- https://github.com/nektro/zig-webidl
- https://github.com/nektro/zig-xml
- https://github.com/nektro/zig-yaml
- https://github.com/nektro/zig-zorm
- https://github.com/nektro/koino-fork
