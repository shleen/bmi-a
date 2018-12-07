package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewReader(os.Stdin)

	fmt.Print("Enter your weight (kg): ")
	weightString, err := stdin.ReadString('\n')
	handle(err)
	weight, err := strconv.ParseFloat(strings.TrimSpace(weightString), 64)
	handle(err)

	fmt.Print("Enter your height (m): ")
	heightString, err := stdin.ReadString('\n')
	handle(err)
	height, err := strconv.ParseFloat(strings.TrimSpace(heightString), 64)
	handle(err)

	bmi := weight / (height * height)
	fmt.Printf("Your BMI is %.2f\n!", bmi)
}

func handle(err error) {
	if err != nil {
		fmt.Printf("error: %v\n", err)
		os.Exit(1)
	}
}
