let flag = 0;

function isNumber(char) {
  return /^\d$/.test(char);
}

document.getElementById("displayArea").readOnly = true; //set this attribute in Html file
let screen = document.getElementById("displayArea");
buttons = document.querySelectorAll("button");
let screenValue = "";
let maxItems = 6;

for (item of buttons) {
  item.addEventListener("click", (e) => {
	buttonText = e.target.innerText;
	if (buttonText == "*") {
	  if (flag == 1) {
		flag = 0;
	  }
	  buttonText = "*";
	  screenValue += buttonText;
	  screen.value = screenValue;
	} else if (buttonText == "AC") {
	  if (flag == 1) {
		flag = 0;
	  }
	  screenValue = "";
	  screen.value = screenValue;
	} else if (buttonText == "=") {
	  checkForBracket(); // automatically evaluates if no brackets
	  //
	} else if (isNumber(buttonText)) {
	  if (flag == 1) {
		screenValue = buttonText;
		flag = 0;
	  } else {
		screenValue += buttonText;
	  }
	  screen.value = screenValue;
	} else {
	  if (flag == 1) {
		flag = 0;
	  }
	  screenValue = screen.value + buttonText;
	  screen.value = screenValue;
	}
  });
}

function checkForBracket() {
  // Check if there's a number directly infront of a bracket
  if (
	screen.value.includes("(") &&
	!isNaN(screen.value.charAt(screen.value.indexOf("(") - 1))
  ) {
	window.onBracketMultiplication();
	return;
  } else {
	screen.value = eval(screenValue);
  }
  flag = 1;
}

/* IGNORE THIS
window.onBracketMultiplication = function () {
  screenValue = addStr(screen.value, screen.value.indexOf("("), "*");
  screen.value = eval(screenValue);
}; */