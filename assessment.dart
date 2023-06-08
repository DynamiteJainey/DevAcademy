import 'dart:io';

addNumber(var x) {
  int addition = x;
  while (addition < 100) {
    if (addition < 100) {
      addition += 2;
      print(addition);
      addition += 5;
      print(addition);
      addition += 3;
      print(addition);
      print(" ");
    } else {
      break;
    }
  }
  print("This is the end of your addition");
}

void main() {
  print("Enter Your Name");
  String? name = stdin.readLineSync();
  var hi = 'Hi $name \u2665 \u{1f607} \u{1f606} \u{0740}';
  print(hi);
  print("Welcome to this PC! \n I look forward to working with you $name");
  String command = "Input a Number: \n";
  print(command);
  int number = int.parse(stdin.readLineSync() ?? '0');
  addNumber(number);
}