import 'dart:io';

void main() {
  // Welcome message
  print("Welcome to Dart Bank");

  String? userName;
  double accountBalance = 0.0;

  // Ask to open an account
  while (true) {
    print("Would you like to open an account with us today?");
    print("y or n?");
    String? userInput = stdin.readLineSync();

    if (userInput == "y") {
      print("Great!");
      // Get user's name
      while (true) {
        print("What is your name?:");
        userName = stdin.readLineSync();
        if (userName == null || userName.trim().isEmpty) {
          print("You must enter a name to register with this bank");
          continue; // Loop back and ask again
        } else {
          break;
        }
      }
      print("Welcome to Dart Bank, $userName!");
      break;
    } else if (userInput == "n") {
      print("No problem. Have a nice day!");
      return; // End program if they don't want an account
    } else {
      print("Invalid selection. Please enter 'y' or 'n'.");
    }
  }

  // Ask if they want to make a deposit
  while (true) {
    print("Would you like to make a lodgement?");
    print("y or n?");
    String? userInput = stdin.readLineSync();

    if (userInput == "y") {
      print("Great! How much would you like to lodge?");
      String? amountInput = stdin.readLineSync();

      double? depositAmount = double.tryParse(amountInput ?? '');

      if (depositAmount == null || depositAmount <= 0) {
        print("Invalid amount! Please enter a positive number.");
        continue; // Loop back and ask again
      }

      // Add deposit to account balance
      accountBalance += depositAmount;
      print("Thank you, $userName! You have successfully lodged €${depositAmount}.");
      print("Your current account balance is €${accountBalance}.");
      break; // Exit the lodgement loop after successful deposit

    } else if (userInput == "n") {
      print("No problem, $userName! Come back anytime.");
      break;
    } else {
      print("Invalid selection. Please enter 'y' or 'n'.");
    }
  }

  print("Thank you for visiting Dart Bank. Goodbye, $userName!");
}