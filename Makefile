# Default locations of binaries
# Can be overridden through ENV
COFFEE?=./node_modules/.bin/coffee
SASS?=sass
COFFEELINT?=./node_modules/.bin/coffeelint
KARMA?=./node_modules/karma/bin/karma

COFFEEFLAGS?=--no-header

COFFEEFILES=$(wildcard src/*.coffee)

TARGETS=dist/angular-multiselect.js dist/angular-multiselect.css

all: $(TARGETS)

dist/angular-multiselect.js: $(COFFEEFILES)
	@mkdir -p dist
	$(COFFEE) $(COFFEEFLAGS) -c -p $(COFFEEFILES) > $@

dist/angular-multiselect.css: src/angular-multiselect.sass
	@mkdir -p dist
	$(SASS) $< $@

lint:
	$(COFFEELINT) $(COFFEEFILES)

test:
	$(KARMA) start test/karma.conf.coffee

clean:
	rm -Rf dist

.PHONY: all lint clean test

