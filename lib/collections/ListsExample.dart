class ListsExample with Array<List> {
  static List li1 = [1, 2, 3, 4, 5, 6, 7, 8];
  static List li2 = [0, 1, 4, 5, 6];

  ListsExample() {
    print("--------------------------------\n-----Lists-----");
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print("Add 9 to li1 and add 7,8,9 to li2");
    li1.add(9);
    li2.addAll([7, 8, 9]);
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print("Insert 0 at the beginning of li1 and insert 2,3 after 1 in li2");
    li1.insert(0, 0);
    li2.insertAll(2, [2, 3]);
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print(
        "Replace the last element in li1 with 10 and replace the first 3 elements in li2 with 11,12,13");
    li1[li1.length - 1] = 10;
    li2.replaceRange(0, 3, [11, 12, 13]);
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print(
        "Remove 5 and the element at index 3 from li1 and remove 3 elements with index from 4 to 6 from li2");
    li1.remove(5);
    li1.removeAt(3);
    li2.removeRange(4, 6);
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print("Print \"Yes\" if li2 contains 7 else print \"No\”");
    li2.contains(7) ? print("yes") : print("No");
    // --------------------------------------------------------
    print("Shuffle li1 and clear li2");
    li1.shuffle();
    li2.clear();
    print(getArray(li1, li2));
    // --------------------------------------------------------
    print("Create a new list containing the elements from 2 to 5 of li1.");
    List li3 = [];
    li3.addAll(li1.getRange(2, 5));
    print(getArray(li1, li3));
  }
}

mixin Array<T> {
  String getArray(T arr1, T arr2) {
    return '\tArr1= $arr1\tArr2= $arr2';
  }
}
