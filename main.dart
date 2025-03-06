import 'dart:io';
import 'dart:math';

void main() {
  double x;
  double y;

  print("Enter your first name: "); 
  String? firstName = stdin.readLineSync();
  print("Hi $firstName. Enter your last name: ");
  String? lastName = stdin.readLineSync();
  print("Great to meet you $firstName $lastName");
  print("Let's try some math calculations!");
  print("Choose a value for x: ");
  String? inputX = stdin.readLineSync();
  x = inputX != null && inputX.isNotEmpty ? double.parse(inputX) : 0;
  print("Now choose a value for y: ");
  String? inputY = stdin.readLineSync();
  y = inputY != null && inputY.isNotEmpty ? double.parse(inputY) : 0;
  String? a = "addition";
  String? b = "subtraction";
  String? c = "division";
  String? d = "multiplication";
  print("Now choose what you'd like to do with the two numbers: \n -$a \n -$b \n -$c \n -$d");
  String? inputCommand = stdin.readLineSync();
  double result;
  if (inputCommand == a) {
    result = x + y;
    print(result);
  } else if (inputCommand == b) {
    result = x - y;
    print(result);
  } else if (inputCommand == c) {
    result = x / y;
    print(result);
  } else if (inputCommand == d) {
    result = x * y;
    print(result);
  }
  
  

  

  firstName = firstName ?? "Unknown";
  lastName = lastName ?? "Unknown";



}