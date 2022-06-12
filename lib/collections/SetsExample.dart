import 'package:dart_exercise_week_one/collections/ListsExample.dart';

class SetsExample with Array<Set> {
  static Set<String> boys = {"Peter", "John", "Jamie", "Kit", "Lain", "Taylor"};
  static Set<String> girls = {
    "Lena",
    "Emilia",
    "Taylor",
    "Sophie",
    "Jamie",
    "Maisie"
  };
  SetsExample() {
    print("--------------------------------\n-----Sets-----");
    print(getArray(boys, girls));
    // --------------------------------------------------------
    print("Add Daniel to boys and Anna & Betsy to girls.");
    boys.add("Daniel");
    girls.addAll({"Anna", "Betsy"});
    print(getArray(boys, girls));
    // --------------------------------------------------------
    print("Create a new set called \"all\" that contains both sets.");
    Set<String> all = {};
    for (String element in boys) {
      all.add(element);
    }
    ;
    for (String element in girls) {
      all.add(element);
    }
    ;
    print('\t$all');
    // --------------------------------------------------------
    print(
        "Create a new set called \"both\" that contains the unisex names (both boys and girls).");
    Set<String> both = {};
    for (String element in boys) {
      if (girls.contains(element)) {
        both.add(element);
      }
    }
    print('\t$both');
    // --------------------------------------------------------
    print(
        "Create new set called \"onlyBoys\" that contains all male-specific name (without unisex names).");
    Set<String> onlyBoys = {...boys};
    onlyBoys.removeAll(both.toSet());

    print('\t$onlyBoys');
    // --------------------------------------------------------
    print(
        "Remove all the unisex names from boys and remove \"Lena\" from girls.");
    boys.removeAll(both.toSet());
    girls.remove('Lena');
    print(getArray(boys, girls));
    // --------------------------------------------------------
    print("Print “Yes” if \"only\" contains \"Taylor\" else print “No”");
    onlyBoys.contains("Taylor") ? print("Yes") : print("No");
    // --------------------------------------------------------
    print("Remove all elements from \"all\".");
    all.removeAll(all.toSet());
    print("\t$all");
    // --------------------------------------------------------
    print(
        "Create a list called \"listOfBoys\" from \"onlyBoys\" and print its length.");
    List listOfBoys = onlyBoys.toList();
    print("\t$listOfBoys: lenth= ${listOfBoys.length}");
  }
}
