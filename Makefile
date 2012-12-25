.PHONY: all

HAMLS=$(wildcard *.haml)
HTMLS=$(HAMLS:.haml=.html)
COFFEES=$(wildcard *.coffee)
JAVASCRIPTS=$(COFFEES:.coffee=.js)
SASSES=$(wildcard *.sass)
CSSES=$(SASSES:.sass=.css)

all: $(JAVASCRIPTS) $(HTMLS) $(CSSES)

%.js: %.coffee
	iced -I window -c $<

%.html: %.haml
	haml -f html5 $< $@

%.css: %.sass
	sass $< $@
