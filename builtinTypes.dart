import 'package:characters/characters.dart';

// Defining Integer Literals
var x = 1;
var hex = 0xDEADBEEF;

// Defining Double Literals
var y = 1.1;
var exponents = 1.42e5;

// Declaring a variable as num
num z = 1; // x can have both int and double values

// Turning a string to a number and vice versa
// String -> int
var one = int.parse('1');

// String -> double
var onePointOne = double.parse('1.1');

// int -> String
String oneAsString = 1.toString();

// double -> String
String piAsString = 3.14159.toStringAsFixed(2); // restricts pi to two decimal points

// Defining Compile-Time Constants
const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;

// Defining a String
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

var s = 'string interpolation';

// Concactenating String Literals
var s5 = 'String '
    'concatenation'
    " works even over line breaks.";
var s6 = 'The + operator ' + 'works, as well.';

// Creating MultiLine Strings
var s7 = '''
You can create
multi-line strings like this one.
''';

var s8 = """This is also a
multi-line string.""";

// Creating a Raw String
var s9 = r'In a raw string, not even \n gets special treatment.';

// Creating Compile-Time String Constant
// These work in a const string.
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// These do NOT work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';

// Dart’s type safety means that you can’t use code like if (nonbooleanValue) 
// or assert (nonbooleanValue). Instead, explicitly check for values, like this:
var fullName = '';
var hitPoints = 0;
var unicorn = null;
var iMeantToDoThis = 0 / 0;

void main() {
  z += 2.5;

  assert(one == 1);
  assert(onePointOne == 1.1);
  assert(oneAsString == '1');
  assert(piAsString == '3.14');

  print(piAsString);

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  print(msUntilRetry);

  assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
  assert('That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. '
        'STRING INTERPOLATION is very handy!');

  print(s5);
  print(s6);
  print(s7);
  print(s8);
  print(s9);

  print(validConstString);

  // Check for an empty string.
  assert(fullName.isEmpty);

  // Check for zero.
  assert(hitPoints <= 0);

  // Check for null.
  assert(unicorn == null);

  // Check for NaN.
  assert(iMeantToDoThis.isNaN);

  var hi = 'Hi 🇩🇰 \u2665 \u{1f607} \u{1f606}';
  print(hi);
  print('The last character: ${hi.characters.last}');
}
