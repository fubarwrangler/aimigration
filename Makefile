SOURCES := $(shell find . -type f -name '*.adoc')
HTML:= ${SOURCES:.adoc=.html}
MARKDOWN:= ${SOURCES:.adoc=.md}

all: $(HTML) img

markdown: $(MARKDOWN)

%.md: %.html
	pandoc -f html -t markdown -o $@ $<

%.html: %.adoc
	asciidoc -a toc $^

img:
	$(MAKE) -C pics

clean:
	find . -type f -name '*.html' -delete
	find . -type f -name '*.md' -delete
	$(MAKE) -C pics clean

.PHONY: all clean
