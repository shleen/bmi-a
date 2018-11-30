classes = [
    [ "Under weight", 18.5 ],
    [ "Normal weight", 24.9 ],
    [ "Over weight", 29.9 ],
    [ "Obese (Class-I)", 34.9 ],
    [ "Obese (Class-II)", 39.9 ],
    [ "Obese (Class-III)", float("inf") ] 
]

print("Find out your bmi here! Now! (only if u use metric units)\n")

weight = float(input("Your Weight (kg): "))
height = float(input("Your Height (m): "))

bmi = weight / (height**2)

for c in classes:
    if bmi < c[1]:
        bmi_class = c[0]
        break

print("\nWe have a winner! Your BMI is %.2f. Your BMI tells me that you are- %s." % (bmi, bmi_class))

