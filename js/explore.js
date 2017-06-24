// 7.1 Syntax

//Release 4


// 1. Reverse string w/ built in functions

//Pseudocode::  input"str" => split str into array => reverse array => join array

function reverseString(str) {
  var splitString = str.split("");
  var reverseArray = splitString.reverse();
  var joinArray = reverseArray.join("");
  return joinArray;
}

//Refactor above code ::
// function reverseString(str) {
//   return str.split("").reverse().join("");
// }

// 2. Reverse string w/ for loop




//Driver Code
console.log (reverseString("hello"))


//Playing with JavaScript - JavaScript basics
console.log("string");
console.log (5);
4 + 2
var mynumb=5
console.log(mynumb);