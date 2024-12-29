# ziginfra

meta monorepo to run tasks across all my zig repositories at once


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
