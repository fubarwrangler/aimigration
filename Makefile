all: introduction.html

%.html: %.adoc
	asciidoc $^

clean:
	rm -f *.html

.PHONY: all clean