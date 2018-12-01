print "Please Enter Your Height: "
height = gets.chomp.to_f
print "Please Enter Your Weght: "
weight = gets.chomp.to_f
bmi = (weight/(height**2)).round(3)

exercise = { 'Walking': 175, 'Running, Cycling, or Swimming': 300, 'Rowing': 420, 'Jumping Rope': 500 }
food = { 'Eggs': 78, 'Bowl of Rice': 204, 'Strip of Chicken Breast': 142, 'A Scoop of Whey Protein': 210 }

bmi < 18.5 ? condition = "underweight" : condition = "normal"
condition = "overweight" if bmi > 25

puts
puts "Your BMI is #{bmi}, you are considered #{condition}."
rec_modactive_calorie_upper = (2.2*15*(25 * (height**2))).round(2)
rec_modactive_calorie_lower = (2.2*15*(18.5 * (height**2))).round(2)
puts

case condition
  when "normal"
    puts "You are perfectly healthy!"
  when "overweight"
    net_height = Math.sqrt(weight/25) - height
    net_weight = weight - (25 * (height**2))
    puts "Please either grow #{net_height.round(3)}m or lose #{net_weight.round(3)}kg."
    puts 
    calories = net_weight * 1000 * 9
    puts "The recommended daily calorie intake for you is #{rec_modactive_calorie_upper} calories assuming a moderately active lifestyle."
    puts "To lose #{net_weight.round(3)}kg, you will need to burn an excess of #{calories.round(3)} calories."
    puts
    exercise.each {|x, y| puts "#{x} 30 mins daily will burn #{y} calories, achieving your goal in #{(calories/y).round(1)} days."}
    puts
    puts "Combined with a 500 calorie deficit diet, meaning #{rec_modactive_calorie_upper-500} calories daily, your goal will be achieved in: "
    exercise.each {|x, y| puts "#{x}: #{((calories/y).round(1)/2)} Days! Aprox. #{(((calories/y)/2)/30).round(1)} Months!"}
  else
    net_height = height - Math.sqrt(weight/25)
    net_weight = (18.5 * (height**2)) - weight
    puts "Please either shrink #{net_height.round(3)}m or gain #{net_weight.round(3)}kg."
    puts
    puts "The recommended daily calorie intake for you is #{rec_modactive_calorie_lower} calories assuming a moderately active lifestyle."
    puts "Please eat a surplus of 500 calories for a total of #{rec_modactive_calorie_lower+500} calories a day to gain weight."
    puts
    puts "Here are some calorie guidelines: "
    food.each {|x, y| puts "#{x}: #{y} calories!"}
  end
