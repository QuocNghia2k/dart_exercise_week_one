import 'dart:math';

class FuntionExample {
  FuntionExample() {}

  bool isPalindrome(String input) {
    String converInput = "";
    for (var i = input.length - 1; i >= 0; i--) {
      converInput += input[i];
    }
    return (converInput == input) ? true : false;
  }

  List ramdomInValue(int n, int min, int max) {
    List listResult = [];
    int rd = 0;
    for (var i = 0; i < n; i++) {
      rd = Random(max - min) as int;
      rd += min;
      listResult.add(rd);
    }
    return listResult;
  }

  String deleteVowels(String input) {
    String result = "";
    for (var i = 0; i < input.length - 1; i++) {
      if (!input[i].contains(RegExp(".*[AEIOU].*"))) {
        result += input[i];
      }
    }
    return result;
  }

  List<int> findNumberSecondLowesrAndGreatest(List<int> input) {
    input.sort();
    Set listSDort = input.toSet();
    List<int> result = [
      listSDort.toList()[1],
      listSDort.toList()[listSDort.length - 2]
    ];
    return result;
  }

  String toUpperName(String input) {
    String result = input[0].toUpperCase();
    input.trim();
    for (var i = 1; i < input.length - 1; i++) {
      if (input[i] == " ") {
        result += input[i] + input[i + 1].toUpperCase();
        i++;
        continue;
      }
      result += input[i];
    }
    return result;
  }

  String findLongestWord(String input) {
    List listWork = input.split(" ");
    listWork.sort((a, b) => a.length.compareTo(b.length));
    return listWork[listWork.length - 1];
  }

  String sortLettersInAlphabetical(String input) {
    input.trim().toLowerCase();
    String result = "";
    List listChar = [];
    for (var i = 0; i < input.length - 1; i++) {
      listChar.add(input[i]);
    }
    listChar.sort();
    for (var char in listChar) {
      result += char;
    }
    return result;
  }

  Map calculatesText(String input) {
    input.replaceAll(" ", "");
    int uppercaseText = 0;
    int lowerText = 0;
    int numbers = 0;
    int symbols = 0;
    Map<String, int> calculate = {
      "uppercase": 0,
      "lower": 0,
      "numbers": 0,
      "symbols": 0
    };
    for (var i = 0; i < input.length - 1; i++) {
      if (input[i].contains(RegExp(".*[A-Z].*"))) {
        uppercaseText++;
      } else if (input[i].contains(RegExp(".*[a-z].*"))) {
        lowerText++;
      } else if (input[i].contains(RegExp(".*[0-9].*"))) {
        numbers++;
      } else {
        symbols++;
      }
    }

    calculate["uppercase"] = uppercaseText;
    calculate["lower"] = lowerText;
    calculate["numbers"] = numbers;
    calculate["symbols"] = symbols;
    return calculate;
  }

  List findCharaxterOccurTwoTime(String input) {
    input.trim().replaceAll(" ", "").toUpperCase();
    List result = [];
    List converInput = [];
    Set setInput = {};
    for (var i = 0; i < input.length - 1; i++) {
      converInput.add(input[i]);
    }

    setInput = converInput.toSet();
    for (var char in setInput) {
      int count = 0;
      for (var find in converInput) {
        if (char == find) ++count;
      }
      if (count == 2) {
        result.add(char);
      }
    }
    return result;
  }

  int calculateFactorial(int i) {
    if (i == 1) return 1;
    return i * calculateFactorial(--i);
  }
}
