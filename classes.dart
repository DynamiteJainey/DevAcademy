
import 'dart:math';

var a = 12346;
var b = "Yello";
var c = true;

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
  
}

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}

/* If the superclass doesn’t have an unnamed, no-argument constructor, 
then you must manually call one of the constructors in the superclass. 

Specify the superclass constructor after a colon (:), just before the 
constructor body (if any).

In the following example, the constructor for the Employee class calls 
the named constructor for its superclass, Person. */
class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(super.data) : super.fromJson() {
    print('in Employee');
    
  }
}

// To avoid having to manually pass each parameter into the super invocation 
// of a constructor, you can use super-initializer parameters to forward 
// parameters to the specified or default superclass constructor. 
class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);
}

/* If your class produces objects that never change, you can make these 
objects compile-time constants. To do this, define a const constructor and 
make sure that all instance variables are final.  */
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

/* Use the factory keyword when implementing a constructor that doesn’t 
always create a new instance of its class. For example, a factory constructor 
might return an instance from a cache, or it might return an instance of a 
subtype. Another use case for factory constructors is initializing a final 
variable using logic that can’t be handled in the initializer list. */

// In the following example, the Logger factory constructor returns objects 
//from a cache, and the Logger.fromJson factory constructor initializes a 
//final variable from a JSON object.
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

// Abstract classes are useful for defining interfaces, often with some implementation. 

//Abstract classes often have abstract methods. Here’s an example of 
//declaring an abstract class that has an abstract method:
// This class is declared abstract and thus
// can't be instantiated.
abstract class AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren(); // Abstract method.
}

// IMPLICIT Interfaces
// A person. The implicit interface contains greet().
class Persona {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Persona(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Persona {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Persona person) => person.greet('Bob');

class Queue {
  static const initialCapacity = 16;
  // ···
}

// Static methods (class methods) don’t operate on an instance, 
//and thus don’t have access to this. They do, however, have access to 
//static variables. As the following example shows, you invoke static 
//methods directly on a class:
class Pointer {
  double x, y;
  Pointer(this.x, this.y);

  static double distanceBetween(Pointer a, Pointer b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}


void main(){
  print("The type of a is ${a.runtimeType}");
  print("The type of a is ${b.runtimeType}");
  print("The type of a is ${c.runtimeType}");
  var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.

  var employee = Employee.fromJson({});
  print(employee);
  // Prints:
  // in Person
  // in Employee
  // Instance of 'Employee'

  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
  print(loggerJson);

  
  print(greetBob(Persona('Kathy')));
  print(greetBob(Impostor()));

  assert(Queue.initialCapacity == 16);

  var u = Pointer(2, 2);
  var v = Pointer(4, 4);
  var distance = Pointer.distanceBetween(u, v);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}
