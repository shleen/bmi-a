if (interactive()) {

	weight = as.numeric(readline(prompt='Your Weight (kg): '))
	height = as.numeric(readline(prompt='Your Height (m): '))

} else {

	cat('Your Weight (kg): ')
	weight = as.numeric(readLines('stdin', n=1))
	
	cat('Your Height (m): ')
	height = as.numeric(readLines('stdin', n=1))

}

bmi = weight / (height**2)

print(paste('Your bmi is', round(bmi, 2)))
