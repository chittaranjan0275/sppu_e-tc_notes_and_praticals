function Circle() {
    let x = document.getElementById("Radius");
    let y = Math.PI * (x.value) * (x.value);

    //alert("Area Of Circle  : "+y);
    document.getElementById("Ans").innerHTML = y;
}

function Triangle() {
    var a = parseInt(document.getElementById("FirstSide").value);
    var b = parseInt(document.getElementById("SecondSide").value);
    var c = parseInt(document.getElementById("ThirdSide").value);
    console.log(d);
    var s = (a + b + c) / 2
    var d = Math.sqrt(s * ((s - a) * (s - b) * (s - c)));


    // alert("Area Of Triangle with sides"+a+","+b+","+c+" is : "+d);
    document.getElementById("Ans1").innerHTML = d;

}

function Reactangle() {
    var p = document.getElementById("Length");
    var q = document.getElementById("Breadth");
    let r = p.value * q.value;

    //alert("Arae Of Reactangle with sides : "+r);
    document.getElementById("Ans2").innerHTML = r;
}

