import 'dart:io';

void main() {
  // Welcome message
  print("Welcome to Dart Bank");

  String? userName;
  double accountBalance = 0.0;

  // Ask to open an account
  String? openAccountInput;
  bool validAccountResponse = false;

  while (!validAccountResponse) {
    print("Would you like to open an account with us today?");
    print("y or n?");
    openAccountInput = stdin.readLineSync();

    if (openAccountInput == "y") {
      validAccountResponse = true;
      print("Great!");

      // Get user's name
      String? nameInput;
      bool validName = false;

      while (!validName) {
        print("What is your name?:");
        nameInput = stdin.readLineSync();

        if (nameInput == null || nameInput.isEmpty) {
          print("You must enter a name to register with this bank.");
        } else {
          validName = true;
          userName = nameInput;
          print("Welcome to Dart Bank, $userName!");
        }
      }

    } else if (openAccountInput == "n") {
      print("No problem. Have a nice day!");
      return; // End program if they don't want an account
    } else {
      print("Invalid selection. Please enter 'y' or 'n'.");
    }
  }

  // Ask if they want to make a deposit
  String? depositChoice;
  bool validDepositResponse = false;

  while (!validDepositResponse) {
    print("Would you like to make a lodgement?");
    print("y or n?");
    depositChoice = stdin.readLineSync();

    if (depositChoice == "y") {
      validDepositResponse = true;

      String? amountInput;
      bool validAmount = false;

      while (!validAmount) {
        print("Great! How much would you like to lodge?");
        amountInput = stdin.readLineSync();

        double? depositAmount = double.tryParse(amountInput ?? '');

        if (depositAmount == null || depositAmount <= 0) {
          print("Invalid amount! Please enter a positive number.");
        } else {
          validAmount = true;
          accountBalance += depositAmount;
          print("Thank you, $userName! You have successfully lodged €$depositAmount.");
          print("Your current account balance is €$accountBalance.");
        }
      }

    } else if (depositChoice == "n") {
      validDepositResponse = true;
      print("No problem, $userName! Come back anytime.");
    } else {
      print("Invalid selection. Please enter 'y' or 'n'.");
    }
  }

  print("Thank you for visiting Dart Bank. Goodbye, $userName!");
}