This is a really MVP and proof of concept implementation that can
be used by `nix copy` as a writable HTTP binary cache.

### Running

```
 $ nix-build
 $ result/libexec/mvp-nix-http-binary-cache ./config.rb
```

### Configuring

Copy `config.example.rb`, modify it as desired.

All configuration options are required and have no defaults.

### Security

Assumes this has no good security. Seriously, using this over ye ol' wild
~~west^W~~ internet is heavily discouraged.

### Testing

Here's how I'm testing the feature:

```
 $ nix copy \
	--option narinfo-cache-positive-ttl 0 \
	--option narinfo-cache-negative-ttl 0 \
	--to "http://foo:bar@localhost:4567/store" \
	./result
```

Where `foo:bar` is the user/password combination configured.

The `narinfo-cache-*-ttl` options disable the default cache used by
`nix`, in which it will assume writes are fine if the server says so.
Setting those at zero will force a re-send of the data.
