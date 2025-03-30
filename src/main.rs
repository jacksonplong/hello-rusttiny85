#![no_std]
#![no_main]

extern crate attiny_hal;
extern crate embedded_hal;

use embedded_hal::delay::DelayNs;
use panic_halt as _;

type CoreClock = attiny_hal::clock::MHz16;
type Delay = attiny_hal::delay::Delay<CoreClock>;


fn delay_ms(ms: u16){
    Delay::new().delay_ms(u32::from(ms));
}

#[avr_device::entry]
fn main() -> ! {
    let dp = attiny_hal::Peripherals::take().unwrap();
    let pins = attiny_hal::pins!(dp);
    let mut led = pins.pb0.into_output();

    loop {
        led.toggle();
        delay_ms(500);
    }
}
