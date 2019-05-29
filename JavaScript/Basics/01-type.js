'use strict';

console.log('Hello JS');
let str = "Hello";
console.log(str);
let str2 = `embedding ${str}`;
console.log(str2);
let x = "a string";
x = Number(x);
console.log(Number([1, 2, 3]));


//DOM - document object model

let header = document.getElementById(identifier)
header.innerHTML = 'Hello <em>manipulated</em> DOM'