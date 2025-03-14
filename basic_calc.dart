import 'dart:io';

void main() {
  double x;
  double y;
  
  // User introduces themselves
  print("Enter your first name: ");
  String? firstName = stdin.readLineSync();
  print("Hi $firstName. Enter your last name: ");
  String? lastName = stdin.readLineSync();

  firstName = firstName ?? "Guest";
  lastName = lastName ?? "";

  print("Great to meet you $firstName $lastName");
  print("Let's try some math calculations!");

  // Get x value
  print("Choose a value for x: ");
  String? inputX = stdin.readLineSync();
  x = inputX != null && inputX.isNotEmpty ? double.parse(inputX) : 0;
  print("x = $x");

  // Get y value
  print("Now choose a value for y: ");
  String? inputY = stdin.readLineSync();
  y = inputY != null && inputY.isNotEmpty ? double.parse(inputY) : 0;
  print("y = $y");

  String? inputCommand;
  double result;
  bool validInput = false;

  // The user chooses the operator
  while (!validInput) {
    print("Now choose what you'd like to do with the two numbers: \n + \n - \n / \n *");
    inputCommand = stdin.readLineSync();

    switch (inputCommand) {
      case "+":
        result = x + y;
        validInput = true; //Breaks while loop
      case "-":
        result = x - y;
        validInput = true; //Breaks while loop
      case "/":
        if (y == 0) {
          print("Division by zero is not allowed. Please try again.");
          continue; // Restart the while loop if division by zero
        } else 
        result = x / y;
        validInput = true; //Breaks while loop
      case "*":
        result = x * y;
        validInput = true; //Breaks while loop
      default:
        print("Invalid input. Please enter a valid operation.");
        continue; // Restart the while loop if the user enters an invalid operation
    }

    // Result is given 
      print("The result is: $result. \nCongratulations, $firstName! A successful first console program!");
    }
  }


