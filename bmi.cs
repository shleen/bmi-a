using System;

namespace BMI
{
    internal static class Program
    {
        private static void Main(string[] args)
        {
            Console.WriteLine("Find out your bmi here! Now! (only if u use metric units)");

            Console.Write("Your Weight (kg): ");
            var weight = float.Parse(Console.ReadLine());

            Console.Write("Your Height (m): ");
            var height = float.Parse(Console.ReadLine());

            var bmi = weight / Math.Pow(height, 2);
            Console.WriteLine($"We have a winner! Your BMI is {bmi:n2}.");
        }
    }
}