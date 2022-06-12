class MapsExample {
  static Map student = {
    "name": "Hung Nguyen",
    "gender": "male",
    "age": 22,
    "id": "123456789",
    "phone": "565689891",
    "email": "hungnm@devera.vn"
  };
  MapsExample() {
    print(student);
    print("Add \"stateID\": \"WA\" and \"yearEnrolled\": 2017");
    student.addAll({"stateID": "WA", "yearEnrolled": 2017});
    print(student);
    // --------------------------------------------------------
    print(
        "Check if there is a key called \"phone\" then delete it else print \"NO\”");
    student.containsKey({"phone"}) ? student.remove("phone") : print("No");
    // --------------------------------------------------------
    print("Print all keys");
    print(student.keys);
    // --------------------------------------------------------
    print(
        "Check if there is a value equal to 20 then print \"Yes\" else print \"No\”");
    student.containsValue(20) ? print("Yes") : print("No");
    // --------------------------------------------------------
    print("Print all values");
    print(student.values);
    // --------------------------------------------------------
    print(
        "Update the \"age\" with 23 and \"phone\" with 213456789 with different methods");
    student["age"] = 23;
    student.addAll({"phone": "213456789"});
    print(student);
    // --------------------------------------------------------
    print("Print the length of this map");
    print(student.length);

    // --------------------------------------------------------
    print("Clear it");
    student.clear();
  }
}
