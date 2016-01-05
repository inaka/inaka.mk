# Copyright (c) 2016, Erlang Solutions Ltd.
# This file is part of erlang.mk and subject to the terms of the ISC License.

# Configuration.

DIALYZER_DIRS := ebin/ test/
DIALYZER_OPTS += --verbose --statistics -Wunmatched_returns

# Core targets.

help::
	$(verbose) printf "%s\n" "" \
		"inaka.mk targets:"\
		"  plt-all     Builds the plt including the modules in the test folder" \
		"  dialyze-all Runs dialyzer including the modules in the test folder"

# Plugin-specific targets.

test-build-for-plt-all: ERLC_OPTS=$(TEST_ERLC_OPTS)
test-build-for-plt-all:
	@$(MAKE) --no-print-directory test-dir ERLC_OPTS="$(TEST_ERLC_OPTS)"
	$(gen_verbose) touch ebin/test

plt-all: PLT_APPS := $(TEST_DEPS)
plt-all: test-deps test-build-for-plt-all plt

dialyze-all: app test-build-for-plt-all dialyze

