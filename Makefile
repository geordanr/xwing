.PHONY: all javascripts

HAMLS=$(wildcard *.haml)
HTMLS=$(HAMLS:.haml=.html)

all: javascripts $(HTMLS)

javascripts:
	coffee -c *.coffee

%.html: %.haml
	haml -f html5 $< $@
