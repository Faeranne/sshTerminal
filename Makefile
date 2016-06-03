.PHONY: case software clean collect

all: case software collect

case:
	$(MAKE) -C case

software:
	$(MAKE) -C software

clean:
	$(MAKE) -C case clean
	$(MAKE) -C software clean
	rm -rf build/software
	rm -rf build/case

collect:
	mkdir -p build/software
	mkdir -p build/case
	cp software/build/* build/software
	cp case/build/* build/case
