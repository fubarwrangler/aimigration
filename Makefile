SOURCES := $(shell find . -type f -name '*.adoc')
HTML:= ${SOURCES:.adoc=.html}
MARKDOWN:= ${SOURCES:.adoc=.md}

all: $(HTML) pics

markdown: $(MARKDOWN)

%.md: %.html
	pandoc -f html -t markdown -o $@ $<

%.html: %.adoc
	asciidoc -a toc $^

pics:
	$(MAKE) -C pics

clean:
	find . -type f -name '*.html' -delete
	find . -type f -name '*.md' -delete

.PHONY: all clean
