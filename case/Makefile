# explicit wildcard expansion suppresses errors when no files are found
include $(wildcard *.deps)

.PHONY: clean stl png collect

BUILD=build

PARTS = screenBorder screenLid baseBottom baseLid
OBJ = $(patsubst %,$(BUILD)/%.stl, $(PARTS))
IMG = $(patsubst %,$(BUILD)/%.png, $(PARTS))

all: stl png

stl: $(OBJ)
png: $(IMG)

build/%.stl: %.scad
	mkdir -p build
	openscad -o $@ -D res=10 $^

build/%.png: %.scad
	mkdir -p build
	openscad -o $@ -D res=100 $^

clean:
	rm -f build/*.stl build/*.png
