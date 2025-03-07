import 'dart:io';

void main() {
  double? billAmount;
  double? tipPercentage;
  double? tip;

  // User enters bill amount
  while (true) {
      print("Enter the bill amount: ");
      String? input = stdin.readLineSync();
      billAmount = double.tryParse(input ?? '');
      
      if (billAmount != null) {
        print("Your bill total is: $billAmount€");
        break; // Exit loop if valid number
      } else 
        print("Invalid input! Please enter a valid number.");
    }

  // User enters tip %
  while (true) {
      print("Enter the tip % you would like to leave: ");
      String? input = stdin.readLineSync();
      tipPercentage = double.tryParse(input ?? '');
      
      if (tipPercentage != null) {
        print("You want to leave a $tipPercentage% tip");
        break; // Exit loop if valid number
      } else 
        print("Invalid input! Please enter a valid number.");
  }

  // Tip is calculated and printed
  tip = billAmount * (tipPercentage / 100);
  print("Your tip is: ${tip.toStringAsFixed(2)}€");




}