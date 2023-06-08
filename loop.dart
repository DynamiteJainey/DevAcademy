import 'dart:io';

void main() {
  outerloop: // this is the label name

  for (var i = 0; i < 5; i ++) {
    print("Innerloop: ${i}");
    innerloop:

    for (var j = 0; j < 5; j++) {
      if(j > 3) break;

      // Quit the innermost loop
      if (i == 2) break innerloop;

      // Do the same thing
      if (i == 4) break outerloop;

      // Quit the outer loop
      print("Innerloop: ${j}");
    }
  }

  outerloop2:
  for (var i = 0; i < 3; i++) { 
      print("Outerloop:${i}"); 
      
      for (var j = 0; j < 5; j++) { 
         if (j == 3){ 
            continue outerloop2; 
         } 
         print("Innerloop:${j}"); 
      } 
   } 

   // Testing Switch Statement
   String command = "Input Your Grade";
   print(command);
   String? grade = stdin.readLineSync(); 
   switch(grade) { 
      case "A": {  print("Excellent"); } 
      break; 
     
      case "B": {  print("Good"); } 
      break; 
     
      case "C": {  print("Fair"); } 
      break; 
     
      case "D": {  print("Poor"); } 
      break; 
     
      default: { print("Invalid choice"); } 
      break; 
   } 
}