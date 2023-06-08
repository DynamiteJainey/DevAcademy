// creating variables and initializing them
var name = "Bob";
Object identity = "Bob"; // for variables not restricted to single type
String userID = "Bob101";
dynamic id_User = 123; // for variables not restricted to single type

int? lineCount; // can be null

int linearCount = 0; // cannot be null

late String description; // declaring a non nullable variable that is initialized after its declaration OR for lazily initializing a value

void main() {
  description = "Fettacunni";
  print(description);
  print(set);
}

//A final variable can be set only once;  Note: Instance variables can be final but not const.
final nominee = "Bob"; // without type annotation
final String nickname = "Bobby"; // with type annotation

/* Use const for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const. 
Where you declare the variable, set the value to a compile-time constant such as a number or string literal, a const variable, or the 
result of an arithmetic operation on constant numbers: */
const bar = 1000;
const double atm = 1.01325 * bar;

/* The const keyword isn’t just for declaring constant variables. You can also use it to create constant values, as well as to declare 
constructors that create constant values. Any variable can have a constant value. */
var food = const [];
final bare = const [];
const baz = []; // Equivalent to `const []`

// You can change the value of a non-final, non-const variable, even if it used to have a const value:
var foo = [1, 2, 3]; // Was const []

// You can’t change the value of a const variable:
// baz = [42]; // Error: Constant variables can't be assigned a value.

// You can define constants that use type checks and casts (is and as), collection if, and spread operators (... and ...?):
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
