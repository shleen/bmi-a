#include  <iostream>

using namespace std;

int main()
{
  float height;
  float weight;
  float bmi;
  cout << "Enter height (M): ";
  cin >> height;
  cout << "Enter weight (kg): ";
  cin >> weight;
  
  bmi = weight / (height * height);
  cout << "This is your bmi: "<< bmi << endl;

}
