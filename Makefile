SOURCES    := ${wildcard *.adoc}
OBJECTS    := ${SOURCES:.adoc=.html}

all: $(OBJECTS)

%.html: %.adoc
	asciidoc $^

clean:
	rm -f *.html

.PHONY: all clean
