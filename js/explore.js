// 7.1 Syntax

//Release 4

function reverseString(str) {
    var splitString = str.split("");
    var reverseArray = splitString.reverse();
    var joinArray = reverseArray.join("");
    return joinArray;
}

/*
pseudocode::
  input: string
  Steps:
    1. split string into array
    2. reverse array
    3. join array
  output: string
*/

//Driver Code::
// print function
console.log (reverseString("JavaScript"))
// console.log (reverseString("programming"))

// stores the result of the function in a variable.
var newVariable = reverseString("JavaScript")
// print new variable
console.log (newVariable)

// print the variable if some condition is true
if (newVariable.length == "JavaScript".length) {
  console.log("Yes!! Of course " + newVariable + " is the same length as JavaScript.")
};


/* --------------------------------------
// DSA NOTES::
1. Reverse string w/ built in functions
function reverseString(str) {
    var splitString = str.split("");
    var reverseArray = splitString.reverse();
    var joinArray = reverseArray.join("");
    return joinArray;
}

  //Refactor above code ::
  function reverseString(str) {
    return str.split("").reverse().join("");
  }


// 2. Reverse string w/ for loop
function reverseString(str) {
   var newString= "";

    for (var i = str.length -1; i >=0; i --) {
    //var i = str.length -1 [sets the count] => i >=0 [while condition/loop]  => i-- [decrease inclement by 1, same as 1-=1]
      newString += str[i];
    }
    return newString
}


// 3. Reverse string with Recursion
function reverseString(str) {
  if (str == "")
    return "";
  else
    return reverseString(str.substr(1)) + str.charAt(0);
}

//Driver Code
console.log (reverseString("hello"))


//Playing with JavaScript - JavaScript basics
console.log("string");
console.log (5);
var mynumb=5
console.log(mynumb);
*/