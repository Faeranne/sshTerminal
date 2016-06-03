.PHONY: case software clean

all: case software

case:
	$(MAKE) -C case

software:
	$(MAKE) -C software

clean:
	$(MAKE) -C case clean
	$(MAKE) -C software clean
