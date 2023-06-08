/* There are different ways to initialize a variable in Dart. 
The straight forward and recommended way is by using the keyword ‘var‘. */
var personName = 'John Doe';
var personAge = 25;

// We use the keyword ‘var’ when we create a variable and we omit the keyword when we use it.
void main() {
  print(personName); // we get John Doe
  print(personAge); // we get 25
  myVar = "Hello World";
  myVar = 100;
  myVar = true;
}

/* Instead of using the ‘var’ keyword, we can use the data type to create a variable. 
The variables in the previous example can also be initialized like this: */
String name = "Richie";
int age = 21;

/* There is another way to create a variable in Dart by using the keyword ‘dynamic‘. 
As the name suggests, the variable which is created by using the keyword dynamic, 
can contain any type of data. */
dynamic myVar; // see main function for initializations

// We should avoid using the type ‘dynamic’ in Dart unless we do not have any other option.