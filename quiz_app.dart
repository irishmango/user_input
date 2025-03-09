import 'dart:io';

main() {
  // User introduces themselves
  print("Hi! What can I call you?");
  String? userName = stdin.readLineSync();
  print("Hi, $userName! Get ready to test your knowledge!");
  print("Press Enter to continue.");
  stdin.readLineSync();

  String correctMessage = "Correct! Well done!";
  String incorrectMessage = "Wrong Answer! Bad luck.";
  String invalidMessage = "Invalid Answer. Please enter a, b, c, or d.";
  int points = 0;

  // QUESTION 1
  while (true) {
    print("\nQUESTION 1:");
    print("What is the largest planet in the solar system?");
    print("a - Earth");
    print("b - Mars");
    print("c - Jupiter");
    print("d - Saturn");

    String? userInput = stdin.readLineSync();

    switch (userInput) {
      case "a":
        print(incorrectMessage);
        break;
      case "b":
        print(incorrectMessage);
        break;
      case "c":
        print(correctMessage);
        break; 
      case "d":
        print(incorrectMessage);
        break;
      default:
        print(invalidMessage);
        continue; // Ask again without exiting
    }
    if (userInput == "c") {
      points += 1;
      break; // Breaks the loop after correct answer
    } else {
    break;
  }
  }

  // QUESTION 2
  while (true) {
    print("\nQUESTION 2:");
    print("What is the country with the largest population?");
    print("a - India");
    print("b - USA");
    print("c - China");
    print("d - Russia");

    String? userInput = stdin.readLineSync();

    switch (userInput) {
      case "a":
        print(correctMessage);
        break;
      case "b":
        print(incorrectMessage);
        break;
      case "c":
        print(incorrectMessage);
        break;
      case "d":
        print(incorrectMessage);
        break;
      default:
        print(invalidMessage);
        continue; // Ask again without exiting
    }
    if (userInput == "a") {
      points += 1;
      break; // Exit loop after correct answer
    } else {
    break;
  }
  }

  // QUESTION 3
  while (true) {
    print("\nQUESTION 3:");
    print("Who created Flutter?");
    print("a - Apple");
    print("b - Google");
    print("c - IBM");
    print("d - Samsung");

    String? userInput = stdin.readLineSync();

    switch (userInput) {
      case "a":
        print(incorrectMessage);
        break;
      case "b":
        print(correctMessage);
        break;
      case "c":
        print(incorrectMessage);
        break;
      case "d":
        print(incorrectMessage);
        break;
      default:
        print(invalidMessage);
        continue; // Ask again without exiting
    }
    if (userInput == "b") {
      points += 1;
      break; // Exit loop after correct answer
    } else {
    break;
  }
  }

  // QUESTION 4
while (true) {
  print("\nQUESTION 4:");
  print("What is the capital city of France?");
  print("a - Berlin");
  print("b - Madrid");
  print("c - Paris");
  print("d - Rome");

  String? userInput = stdin.readLineSync();

  switch (userInput) {
    case "a":
      print(incorrectMessage);
      break;
    case "b":
      print(incorrectMessage);
      break;
    case "c":
      print(correctMessage);
      break;
    case "d":
      print(incorrectMessage);
      break;
    default:
      print("Invalid Answer. Please enter a, b, c, or d.");
      continue; // Ask again without exiting
  }

  if (userInput == "c") {
    points += 1;
    break; // Exit loop after correct answer
  } else {
    break;
  }
}

// QUESTION 5
while (true) {
  print("\nQUESTION 5:");
  print("Which programming language is used to develop Flutter apps?");
  print("a - Java");
  print("b - Dart");
  print("c - Kotlin");
  print("d - Swift");

  String? userInput = stdin.readLineSync();

  switch (userInput) {
    case "a":
      print(incorrectMessage);
      break;
    case "b":
      print(correctMessage);
      break;
    case "c":
      print(incorrectMessage);
      break;
    case "d":
      print(incorrectMessage);
      break;
    default:
      print("Invalid Answer. Please enter a, b, c, or d.");
      continue; // Ask again without exiting
  }

  if (userInput == "b") {
    points += 1;
    break; // Exit loop after correct answer
  } else {
    break;
  }
}

  double score = (points / 5) * 100;

  print("\nGreat job, $userName! You completed the quiz!");
  print("You got a score of: $score%!");
}