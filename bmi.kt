import kotlin.math.pow

fun main(args: Array<String>) {
    println("Find out your bmi here! Now! (only if u use metric units)")
    print("Your Weight (kg): ")
    val weight = readLine()?.toFloat()!!
    print("Your Height (m): ")
    val height = readLine()?.toFloat()!!

    val bmi = weight / (height.pow(2))
    println("We have a winner! Your BMI is %.2f.".format(bmi))
}