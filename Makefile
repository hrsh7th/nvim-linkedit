.PHONY: lint
lint:
	luacheck --codes ./lua

.PHONY: test
test:
	vusted --output=gtest --pattern=.spec ./lua

.PHONY: format
format:
	stylua --config-path stylua.toml --glob 'lua/**/*.lua' -- lua

.PHONY: typecheck
typecheck:
	rm -Rf $(pwd)/tmp/typecheck ||:; lua-language-server --check $(pwd)/lua --configpath=$(pwd)/.luarc.json --logpath=$(pwd)/tmp/typecheck > /dev/null; cat ./tmp/typecheck/check.json 2> /dev/null ||:

.PHONY: check
check:
	$(MAKE) lint
	$(MAKE) test

