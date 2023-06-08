void main() {
  print("Hello, World");
  for (int i = 0; i < 5; i++) {  
    print('hello ${i + 1}');  
  }

  //Function declaration  
  num addNumbers(num a, num b) {  
      // Here, we use num as a type because it should work with int and double both.  
      return a + b;  
  }  
  var price1 = 29.99;  
  var price2 = 20.81;  
  var total = addNumbers(price1, price2);
  print(total);
  var num1 = 10;  
  var num2 = 45;  
  var total2 = addNumbers(num1, num2);
  print(total2);
}
 