class Vector3D {
  double _x, _y, _z;
  Vector3D(this._x, this._y, this._z);
  // ignore: non_constant_identifier_names
  Vector3D(double a){
    this._x=this._y=this._z =a;
  }
  Same(double a){
    _x=_y=_z=a;
  }
  
  bool coincide(Vector3D vecter){
    if (this._x==vecter._x&&this._y==vecter._y&&this._z==vecter._z) {
      return true;
    }
    return false;
  }
}
