dd of=image.bin bs=1M count=$((0x80)) if=/dev/zero
dd of=image.bin bs=1M conv=notrunc if=kernel.bin
dd of=image.bin bs=1M conv=notrunc seek=$((0x70)) if=fs.img
	