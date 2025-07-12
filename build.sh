cargo build --release
avr-objcopy -O binary ./target/avr-attiny85/release/hello-rusttiny85.elf ./target/avr-attiny85/release/hello-rusttiny85.bin
