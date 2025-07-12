cargo build --release
avr-objcopy -O ihex ./target/avr-attiny85/release/hello-rusttiny85.elf ./target/avr-attiny85/release/hello-rusttiny85.hex
# Flash fuses provision to ensure desired clockspeed
echo 'Flashing Fuses...'
avrdude -c usbtiny -p t85 -q -q -U lfuse:w:16MHz_fuses/lfuse.hex -U hfuse:w:16MHz_fuses/hfuse.hex -U efuse:w:16MHz_fuses/efuse.hex
avrdude -c usbtiny -p t85 -U flash:w:./target/avr-attiny85/release/hello-attiny85.hex 
