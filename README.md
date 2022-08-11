<p align="center">
  <img width="256" alt="JavaScriptCore.cr logo" src="https://raw.githubusercontent.com/GeopJr/JavaScriptCore.cr/main/logo.svg" />
</p>
<h1 align="center">JavaScriptCore.cr</h1>
<h4 align="center">JavaScriptCore bindings for Crystal</h4>
<p align="center">
  <br />
    <a href="https://github.com/GeopJr/JavaScriptCore.cr/blob/main/CODE_OF_CONDUCT.md"><img src="https://img.shields.io/badge/Contributor%20Covenant-v2.1-ffb500.svg?style=for-the-badge&labelColor=007AFF" alt="Code Of Conduct" /></a>
    <a href="https://github.com/GeopJr/JavaScriptCore.cr/blob/main/LICENSE"><img src="https://img.shields.io/badge/LICENSE-BSD--2--Clause-ff9d00.svg?style=for-the-badge&labelColor=007AFF" alt="BSD-2-Clause Licensed" /></a>
    <a href="https://github.com/GeopJr/JavaScriptCore.cr/actions"><img src="https://img.shields.io/github/workflow/status/GeopJr/JavaScriptCore.cr/Specs%20&%20Lint/main?labelColor=ff9d00&style=for-the-badge" alt="ci action status" /></a>
</p>

#

## What is this?

JavaScriptCore is a framework that provides a JavaScript engine for WebKit implementations, and provides this type of scripting in other contexts within macOS. JavaScriptCore is originally derived from KDE's JavaScript engine (KJS) library (which is part of the KDE project) and the PCRE regular expression library. Since forking from KJS and PCRE, JavaScriptCore has been improved with many new features and greatly improved performance.

> from: https://en.wikipedia.org/wiki/WebKit#JavaScriptCore

This shard provides bindings for it, allowing you to evaluate JS from Crystal!

Bindings are being generated using [gi-crystal](https://github.com/hugopl/gi-crystal).

#

## Dependencies

You need **`JavaScriptCore 5.0`**. Your distro might provide it as `libjavascriptcoregtk-5_0` or `typelib-1_0-JavaScriptCore-5_0`. If it doesn't then try installing `webkit2gtk` (the latest, -dev or -devel version if available). Doc generation will probably only be availble by installing one of the `webkit2gtk` packages.

#

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     javascriptcore:
       github: GeopJr/JavaScriptCore.cr
   ```

2. Run `shards install`
3. Run `./bin/gi-crystal` to generate the bindings

#

## Usage

There's a lot you can do with the bindings, but here's a simple evaluation:

```crystal
require "javascriptcore"

context = JavaScriptCore::Context.new
script = "['Java', 'Script', 'Core'].join('')"
result = context.evaluate(script, -1)

p result.to_s #=> "JavaScriptCore"
```

There might be more examples on [`./spec`](./spec/).

#

## Contributing

1. Read the [Code of Conduct](https://github.com/GeopJr/JavaScriptCore.cr/blob/main/CODE_OF_CONDUCT.md)
2. Fork it ( https://github.com/GeopJr/JavaScriptCore.cr/fork )
3. Create your feature branch (git checkout -b my-new-feature)
4. Commit your changes (git commit -am 'Add some feature')
5. Push to the branch (git push origin my-new-feature)
6. Create a new Pull Request
