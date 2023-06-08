import 'dart:io';

void main() {
  String? name = stdin.readLineSync();
  var hi = 'Hi $name \u2665 \u{1f607} \u{1f606} \u{0740}';
  print(hi);
  print("Welcome to this PC! \n I look forward to working with you $name");
}