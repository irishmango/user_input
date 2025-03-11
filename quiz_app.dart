import 'dart:io';

void main() {
  print("Hi! What can I call you?");
  String? userName = stdin.readLineSync() ?? "Guest";
  print("Hi, $userName! Get ready to test your knowledge!");
  print("Press Enter to continue.");
  stdin.readLineSync();

  String correctMessage = "Correct! Well done!";
  String incorrectMessage = "Wrong Answer! Bad luck.";
  String invalidMessage = "Invalid Answer. Please enter a, b, c, or d.";
  int points = 0;
  String? userInput;

  // QUESTION 1
  userInput = "";
  while (userInput != "a" && userInput != "b" && userInput != "c" && userInput != "d") {
    print("\nQUESTION 1:");
    print("What is the largest planet in the solar system?");
    print("a - Earth");
    print("b - Mars");
    print("c - Jupiter");
    print("d - Saturn");

    userInput = stdin.readLineSync();

    if (userInput == "a" || userInput == "b" || userInput == "d") {
      print(incorrectMessage);
    } else if (userInput == "c") {
      print(correctMessage);
      points += 1;
    } else {
      print(invalidMessage);
    }
  }

  // QUESTION 2
  userInput = "";
  while (userInput != "a" && userInput != "b" && userInput != "c" && userInput != "d") {
    print("\nQUESTION 2:");
    print("What is the country with the largest population?");
    print("a - India");
    print("b - USA");
    print("c - China");
    print("d - Russia");

    userInput = stdin.readLineSync();

    if (userInput == "b" || userInput == "c" || userInput == "d") {
      print(incorrectMessage);
    } else if (userInput == "a") {
      print(correctMessage);
      points += 1;
    } else {
      print(invalidMessage);
    }
  }

  // QUESTION 3
  userInput = "";
  while (userInput != "a" && userInput != "b" && userInput != "c" && userInput != "d") {
    print("\nQUESTION 3:");
    print("Who created Flutter?");
    print("a - Apple");
    print("b - Google");
    print("c - IBM");
    print("d - Samsung");

    userInput = stdin.readLineSync();

    if (userInput == "a" || userInput == "c" || userInput == "d") {
      print(incorrectMessage);
    } else if (userInput == "b") {
      print(correctMessage);
      points += 1;
    } else {
      print(invalidMessage);
    }
  }

  // QUESTION 4
  userInput = "";
  while (userInput != "a" && userInput != "b" && userInput != "c" && userInput != "d") {
    print("\nQUESTION 4:");
    print("What is the capital city of France?");
    print("a - Berlin");
    print("b - Madrid");
    print("c - Paris");
    print("d - Rome");

    userInput = stdin.readLineSync();

    if (userInput == "a" || userInput == "b" || userInput == "d") {
      print(incorrectMessage);
    } else if (userInput == "c") {
      print(correctMessage);
      points += 1;
    } else {
      print(invalidMessage);
    }
  }

  // QUESTION 5
  userInput = "";
  while (userInput != "a" && userInput != "b" && userInput != "c" && userInput != "d") {
    print("\nQUESTION 5:");
    print("Which programming language is used to develop Flutter apps?");
    print("a - Java");
    print("b - Dart");
    print("c - Kotlin");
    print("d - Swift");

    userInput = stdin.readLineSync();

    if (userInput == "a" || userInput == "c" || userInput == "d") {
      print(incorrectMessage);
    } else if (userInput == "b") {
      print(correctMessage);
      points += 1;
    } else {
      print(invalidMessage);
    }
  }

  // Calculate Score
  double score = (points / 5) * 100;

  // Final Message
  print("\nGreat job, $userName! You completed the quiz!");
  print("You got a score of: $score%!");
}