import 'dart:io';

void main() {

  print("Enter the bill amount: ");
  String? billAmount = stdin.readLineSync()!;

  print("Choose a tip %: ");
  String? tipPercentage = stdin.readLineSync()!;

  while (true) {
      print("Enter the bill amount: ");
      String? input = stdin.readLineSync();
      double? billAmount = double.tryParse(input ?? '');
      
      if (billAmount != null) {
        break; // Exit loop if valid number
      }
      print("Invalid input! Please enter a valid number.");
    }
}