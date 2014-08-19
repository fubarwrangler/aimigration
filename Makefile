SOURCES := $(shell find . -type f -name '*.adoc')
OBJECTS := ${SOURCES:.adoc=.html}

all: $(OBJECTS)

%.html: %.adoc
	asciidoc $^

clean:
	find . -type f -name '*.html' -delete

.PHONY: all clean
