import 'dart:io';

class ExerciseVariable with NumberInput {
  ExerciseVariable() {
//exercise one
    print(
        "--------------------------------\n-----Variables-----\nExercise one\nEnter name:");
    String? name = stdin.readLineSync();
    print("Enter age");
    int? age = checkInputNumber();
    int yearOld = printYearWhen100yearOld(age);
    print("hello $name - You will be 100 years old in $yearOld");
    print('--------------------------------');
//Exercise Two
    print("--------------------------------\nExercise two\nEnter number:");
    int? number = checkInputNumber();
    print(checkEvenOrOdd(number));
    print('--------------------------------');
//Exercise Two
    print("--------------------------------\nExercise three\nEnter check:");
    int? check = checkInputNumber();
    print('Enter num');
    int? num = checkInputNumber();
    print(devideNumber(check, num));
    print('--------------------------------');
  }
// fruntion

  int printYearWhen100yearOld(int old) {
    return DateTime.now().year + (100 - old);
  }

  String checkEvenOrOdd(int number) {
    if (number % 4 == 0) return '$number is a multiple of 4';
    if (number % 2 == 0) {
      return '$number is even';
    } else {
      return '$number is odd';
    }
  }

  String devideNumber(int check, int num) {
    if (num == 0) {
      return 'num is zero';
    }
    if ((check % num) == 0) {
      return '$check devide evenly into $num';
    }
    return '$check not devide evenly into $num';
  }
}

mixin NumberInput {
  int checkInputNumber() {
    int? number;
    while (!false) {
      try {
        number = int.parse(stdin.readLineSync()!);
      } catch (e) {
        print("Enter number");
        continue;
      }
      break;
    }
    return number;
  }
}
