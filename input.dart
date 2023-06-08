import 'dart:html';

final InputElement firstAdd = querySelector('#first') as InputElement;
final InputElement secondAdd = querySelector('#second') as InputElement;
final InputElement thirdAdd = querySelector('#third') as InputElement;
final ButtonElement startButton = querySelector("#start") as ButtonElement;
final ParagraphElement displayResults =
    querySelector("#results") as ParagraphElement;
final UListElement toDoList = querySelector('#to-do-list') as UListElement;
final InputElement toDoInput = querySelector('#to-do-input') as InputElement;


void main() {
  firstAdd.onChange.listen(addToDoItem);
  //startButton.onClick.listen(display);
  //secondAdd.onChange.listen(addSecond);
  //thirdAdd.onChange.listen(addThird);
}

void display(Event e) {
  num addition = int.parse(firstAdd.value ?? '0');
  final newToDo = LIElement()..text = addition.toString();
  firstAdd.value = '';
  void addNumber(var x) {
    addition = x;
    while (addition < 100) {
      if (addition < 100) {
        addition += 2;
        toDoList.children.add(newToDo);
        addition += 5;
        toDoList.children.add(newToDo);
        addition += 3;
        toDoList.children.add(newToDo);
        print(" ");
      } else {
        break;
      }
    }
  }

  addNumber(addition);
  //addition += 12;
  displayResults.text = addition.toString();
}


void addToDoItem(Event e) {
  final newToDo = LIElement()..text = firstAdd.value;
  firstAdd.value = '';
  toDoList.children.add(newToDo);
}
