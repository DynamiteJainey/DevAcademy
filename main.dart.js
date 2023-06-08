function Display() {
    let x = document.getElementById("ranges");
    let y = x.value;
    let text = x.options[x.selectedIndex].text;
    if (text == "Set by Number of Loops"){
        let z = document.getElementById("loop");
        let w = document.getElementById("total");
        z.style.backgroundColor = blue;
        document.getElementById("loop").style.display = "inline";
        w.style.display = block;
    }
}