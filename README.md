# inaka.mk

erlang.mk extras that we generally use in all of our projects

## Usage

In order to include this plugin in your project you just need to add the
following in your Makefile:

```make
BUILD_DEPS = inaka_mk

dep_inaka_mk = git https://github.com/inaka/inaka.mk.git 1.0.0

DEP_PLUGINS = inaka_mk
```

## Help

Run `make help` in order to check what targets are available for
`inaka.mk`.

## Contact Us

For **questions** or **general comments** regarding the use of this library,
please use our public [hipchat room](http://inaka.net/hipchat).

If you find any **bugs** or have a **problem** while using this library, please
[open an issue](https://github.com/inaka/elvis/issues/new) in this repo
(or a pull request :)).

And you can check all of our open-source projects at [inaka.github.io](http://inaka.github.io).
