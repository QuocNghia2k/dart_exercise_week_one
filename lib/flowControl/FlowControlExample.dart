import 'dart:io';

import 'package:dart_exercise_week_one/variables/ExerciseVriable.dart';
import 'dart:math';

class FlowControlExample with NumberInput {
  FlowControlExample() {
    //LESSON 1

    // print(reversedNumber(12345));

    // print(checkPositiveInteger(5));
    // print(findFirst80IsDigutEven(100));

    print(validityOfPassword("152agcfASRTT"));
    print(validityOfPassword("152agchgfjhg"));
  }

  String checkPositiveOrNegative(int number) {
    String result =
        (number >= 0) ? "$number is Positive" : "$number is Negative";
    return result;
  }

  String solveQuadraticEquations({int? a, int? b, int? c}) {
    if (a == 0) {
      return "x= ${-(c! / b!)}";
    }
    ;
    double? denta = (pow(b!, 2) - 4 * a! * c!) as double?;
    if ((denta!) > 0) {
      double x1 = (-b + sqrt(denta)) / (2 * a);
      double x2 = (-b - sqrt(denta)) / (2 * a);
      return 'x1= $x1: x2= $x2';
    } else if (denta == 0) {
      return "x1 = x2 = ${-b / (2 * a)}";
    }
    return "phuong tring vo nghiem";
  }

  String checkDec(int a, int b, int c) {
    if (b >= a && c >= b) {
      return "increasing";
    } else if (c <= b && b <= a) {
      return "decreasing";
    } else {
      return "neither increasing or decreasing order";
    }
  }

  double sumOfFirstN(int n) {
    return n * (n + 1) / 2;
  }

  int reversedNumber(int num) {
    int result = 0;
    while (num != 0) {
      result = result * 10 + num % 10;
      num = (num ~/ 10);
    }
    return result;
  }

  bool checkPositiveInteger(int num) {
    for (var i = 2; i > num ~/ 2; i++) {
      if (num % i == 0) {
        return false;
      }
      continue;
    }
    return true;
  }

  int checkCharA(String input) {
    int countA = 0;
    for (var i = 0; i < input.length - 1; i++) {
      if (input[i] == "a") {
        countA++;
      }
    }
    return countA;
  }

  int getFactorial(int num) {
    if (num == 1) return 1;
    return num * getFactorial(--num);
  }

  String convertNameIntoInitials(String name) {
    name.trim();
    String nameInitial = name[0].toUpperCase();
    for (var i = 1; i < name.length - 1; i++) {
      if (name[i] == " ") {
        ++i;
        nameInitial += '.${name[i].toUpperCase()}';
      }
    }
    return nameInitial;
  }

  List findFirst80IsDigutEven(int numberStart) {
    List listNumber = [];

    while (true) {
      if (listNumber.length == 80) {
        return listNumber;
      }
      if (checkDigitEven(numberStart)) {
        listNumber.add(numberStart);
      }
      ++numberStart;
    }
  }

  bool checkDigitEven(int num) {
    bool result = true;
    while (num != 0) {
      if ((num % 10) % 2 != 0) {
        return false;
      }
      num ~/= 10;
    }
    return result;
  }

  bool validityOfPassword(String pass) {
    if (pass.length >= 6 && pass.length <= 16) {
      if (pass.contains(RegExp(".*[a-z].*")) &&
          pass.contains(RegExp(".*[A-Z].*")) &&
          pass.contains(RegExp(".*[0-9].*"))) {
        return true;
      }
      return false;
    }
    return false;
  }

  void calculateAverageNumber() {
    print("enter number to calcullate average ");
    double average = 0;
    int? inputNumber;
    String? checkContinue = "";
    while (true) {
      print("Enter number");
      inputNumber = checkInputNumber();
      average = (average + inputNumber) / 2;
      print("continue [y/n]");
      checkContinue = stdin.readLineSync();
      if (checkContinue == "Y" || checkContinue == "y") {
        continue;
      } else {
        break;
      }
    }
    print('average = $average');
  }

  void gameFindNumber() {
    int ram = Random(10) as int;
    int input;
    int i = 0;
    while (i <= 3) {
      if (i == 3) {
        print("loses and Good Job");
        break;
      }
      print("your number: ");
      input = checkInputNumber();
      if (input == ram) {
        print("Hard Luck ---- the number is $ram");
        break;
      } else {
        if (input > ram) {
          print("so can tim nho hon so cua ban");
        }
        print("so can tim nho hon so cua ban");
      }
      ++i;
    }
  }

  String displayTheEquivalentDescription(String descrip) {
    switch (descrip) {
      case "E":
        return "Excellent";
      case "V":
        return "Very good";
      case "G":
        return "Good";
      case "A":
        return "Average";
      case "F":
        return "Fail";
      default:
        return "don't find scrip";
    }
  }

  int checkNumberOfDayInMonth(int month, int year) {
    switch (month) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return 31;
      case 4:
      case 6:
      case 9:
      case 11:
        return 30;
      case 2:
        if (isLeapYear(year)) {
          return 28;
        }
        return 29;
      default:
        return 0;
    }
  }

  bool isLeapYear(int year) {
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) return true;
    return false;
  }
}
