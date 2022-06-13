class Point {
  double? _x;
  double? _y;

  Point(double x, double y) {
    this._x = x;
    this._y = y;
  
  }
  double? get getX => _x;

  double? get getY => _y;

  set setX(double x) {
    _x = x;
  }

  set setY(double y) {
    _y = y;
  }

  Point move(double a, double b){
    setX = (getX! + a);
    setY = (getY!+b);
    return this;
  }

  String display(){
    return "(x= $getX; y= $getY";
  }
}
