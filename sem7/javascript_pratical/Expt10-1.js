// var prompt = require('prompt-sync')();
const table =process.argv.slice(2);


var length=10;
console.log(" Name: Chittaranjan Rathod Roll No: 42457 Batch : S8 Exp_No:06 ABC ID : 129879043197")

console.log(`Multiplication table of ${table} with for loop`)
for(let i=1;i<=length;i++){
    console.log(table+"*"+i+"="+(i*table));
}

var p=1;
console.log(`Multiplication table of ${table} with while loop`)

while(p<=length)
{
    console.log(table+"*"+p+"="+(p*table));
    p++;
}
console.log(`Multiplication table of ${table} with do-while loop`)
let j=1;
do
{
    console.log(table+"*"+j+"="+(j*table));
    j++;
}while(j<=length);


