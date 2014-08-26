all: architecture.png

%.png: %.svg
	inkscape -d 160 -z -e $@ $<
clean:
	rm -f *.png
