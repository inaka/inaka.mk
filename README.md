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
