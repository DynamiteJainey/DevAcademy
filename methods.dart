import 'dart:math';

/* Instance methods on objects can access instance variables and this. 
The distanceTo() method in the following sample is an example of an 
instance method: */
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

// An operator declaration is identified using the built-in identifier 
//operator. The following example defines vector addition (+), subtraction (-), 
//and equality (==):
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

// Getters and setters are special methods that provide read and 
// write access to an object’s properties. Recall that each instance 
// variable has an implicit getter, plus a setter if appropriate. You 
// can create additional properties by implementing getters and setters, 
// using the get and set keywords:
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

// Instance, getter, and setter methods can be abstract, defining an interface 
// but leaving its implementation up to other classes. Abstract methods can only 
// exist in abstract classes.

// To make a method abstract, use a semicolon (;) instead of a method body:
abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}

void main() {
  var result = Point(34, 11);
  print(result);

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}