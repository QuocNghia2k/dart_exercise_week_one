import 'Point.dart';
void main(List<String> args) {
  Point p1 = new Point(10, 12);
  print(p1.display());
  p1.move(3, -2);

  print(p1.display());

}