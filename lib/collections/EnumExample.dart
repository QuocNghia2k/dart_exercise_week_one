import 'dart:io';

import 'package:dart_exercise_week_one/variables/ExerciseVriable.dart';

enum Weekly_Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

class EnumExample with NumberInput {
  EnumExample() {
    print("--------------------------------\n-----Enum-----");
    print("Enter number day: ");
    // int? daynumber = checkInputNumber();
    print(checkDayInWeek(0));
    print('--------------------------------');
  }

  String checkDayInWeek(int daynumber) {
    daynumber = checkInputNumber();
    if ((daynumber >= 1 && daynumber <= 7)) {
      return '${Weekly_Day.values[(daynumber - 1)]}';
    }
    print("is not day in week");
    return checkDayInWeek(daynumber);
  }
}
