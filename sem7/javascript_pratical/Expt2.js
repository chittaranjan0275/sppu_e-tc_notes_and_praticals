var table = 9;
var length = 10;
var i = 1;
document.write("<br>" + "Table using for loop" + "<br>");
for (i = 1; i <= length; i++) {
    document.write("<br>" + table + "*" + i + "=" + (i * table));
}
var a = document.createElement("hr");
a.setAttribute("width", "10000px");
document.body.appendChild(a);


table = 7;
length = 10;
document.write("<br>" + "Table using while loop" + "<br>");
i = 1;
while (i <= length) {
    document.write("<br>" + table + "*" + i + "=" + (i * table));
    i++;
}

var a = document.createElement("hr");
a.setAttribute("width", "10000px");
document.body.appendChild(a);


table = 8;
length = 10;
document.write("<br>" + "Table using do while loop" + "<br>");
i = 1;
do {
    document.write("<br>" + table + "*" + i + "=" + (i * table));
    i++;
} while (i <= length);

