class Mobile {  
  // Property Declaration  
  String color ="";
  String brandName = ""; 
  String modelName = "";  
    
  // Method Creation  
  String calling() {  
    return "Mobile can do call to everyone.";  
  }  
  String musicPlay() {  
    return "Mobile can play all types of Music.";  
  }  
  String clickPicture() {  
    return "Mobile can take pictures.";  
  }  
}  
  
void main() {  
  // Object Creation  
  var myMob = new Mobile();   
    
  // Accessing Class's Property  
  myMob.color = "Black";   
  myMob.brandName = "Apple Inc.";  
  myMob.modelName = "iPhone 11 Pro";  
    
  //Display Output  
  print(myMob.color);  
  print(myMob.modelName);  
  print(myMob.brandName);  
  print(myMob.calling());  
  print(myMob.musicPlay());  
  print(myMob.clickPicture());  
}  