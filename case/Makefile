# explicit wildcard expansion suppresses errors when no files are found
include $(wildcard *.deps)

.PHONY: clean stl png

BUILD=build

PARTS = screenBorder
OBJ = $(patsubst %,$(BUILD)/%.stl, $(PARTS))
IMG = $(patsubst %,$(BUILD)/%.png, $(PARTS))

all: stl png

stl: $(OBJ)
png: $(IMG)

build/%.stl: %.scad
	openscad -o $@ -D res=10 $^

build/%.png: %.scad
	openscad -o $@ -D res=100 $^

clean:
	rm -f build/*.stl build/*.png
