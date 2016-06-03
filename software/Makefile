.PHONY: busybox kernel clean collect

ARM_FLAGS= ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
PREFIX= initramfs/

all: busybox kernel

busybox:
	mkdir -p build/
	cp configs/busybox busybox/.config
	$(MAKE) -C busybox $(ARM_FLAGS)
	$(MAKE) -C busybox $(ARM_FLAGS) install CONFIG_PREFIX=$(PREFIX)

kernel:
	mkdir -p build/
	cp configs/kernel kernel/.config
	$(MAKE) -C kernel $(ARM_FLAGS)

clean:
	$(MAKE) -C kernel clean
	$(MAKE) -C busybox clean
