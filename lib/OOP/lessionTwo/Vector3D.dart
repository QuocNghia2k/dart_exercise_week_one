class Vector3D {
  double _x, _y, _z;
  Vector3D(this._x, this._y, this._z);

  Vector3D.same(double a):
    _x=a, _y=a,_z=a;
 
  bool coincide(Vector3D vecter){
    if (this._x==vecter._x&&this._y==vecter._y&&this._z==vecter._z) {
      return true;
    }
    return false;
  }
}
