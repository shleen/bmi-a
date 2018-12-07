use std::io::{self, Write};
use std::error::Error;

fn main() -> Result<(), Box<Error>> {
	print!("Enter your weight (kg): ");
	flush()?;
	let weight: f64 = read_line()?.parse()?;

	print!("Enter your height (m): ");
	flush()?;
	let height: f64 = read_line()?.parse()?;
	
	let bmi = weight / height.powf(2.0);
	println!("Your BMI is {:.2}", bmi);

	Ok(())
}

fn read_line() -> io::Result<String> {
	let mut line = String::new();
	io::stdin().read_line(&mut line).map(|_| line.trim().into())
}

fn flush() -> io::Result<()> {
	io::stdout().flush()
}
