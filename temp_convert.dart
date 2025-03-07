import 'dart:io';

void main() {
  print("Would you like to convert:\n1.) Fahrenheit to Celsius\n2.) Celsius to Fahrenheit?");
  print("Enter 1 or 2:");

  String? userChoiceInput = stdin.readLineSync();

  // Convert Fahrenheit to Celsius
  if (userChoiceInput == "1") {
    double? fahrenheit;
    
    while (true) {
      print("Enter the temperature in Fahrenheit:");
      String? input = stdin.readLineSync();
      fahrenheit = double.tryParse(input ?? '');
      
      if (fahrenheit != null) {
        break; // Exit while loop if valid number
      } else 
      print("Invalid input! Please enter a valid number.");
    }

    double celsius = (fahrenheit - 32) / 1.8;
    print("$fahrenheit°F = ${celsius.toStringAsFixed(2)}°C");

  // Convert Celsius to Fahrenheit
  } else if (userChoiceInput == "2") {
    double? celsius;
    
    while (true) {
      print("Enter the temperature in Celsius:");
      String? input = stdin.readLineSync();
      celsius = double.tryParse(input ?? '');
      
      if (celsius != null) {
        break; // Exit while loop if valid number
      } else 
      print("Invalid input! Please enter a valid number.");
    }

    double fahrenheit = (celsius * 1.8) + 32;
    print("$celsius°C = ${fahrenheit.toStringAsFixed(2)}°F");

  } else {
    print("Invalid Input. Please enter 1 or 2.");
  }
}