avrdude -c usbtiny -p t85 -U lfuse:r:read_fuses/lfuse.hex -U hfuse:r:read_fuses/hfuse.hex -U efuse:r:read_fuses/efuse.hex
