import 'Trigo.dart';
import 'cal.dart';
import 'msg.dart';

void main(List<String> args) {
  Msg m = new Msg();
  print(m.first());
  print(m.second());

  Trigo t = new Trigo();
  print(t.sinTest(12));
  print(t.cosTest(12));
  print(t.tanTest(12));

  Cal c = new Cal();
  print(c.square(2));
  print(c.logarithm(10));
}
