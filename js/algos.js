// 7.3 Solo Challenge: Algorithm Practice

/* RELEASE 0
pseudocode::
  create a function that takes an array of words and returns the longest word
    input: array
      steps:
        1. create an empty string ("longestStr")
        2. create the FOR loop
        3. store the first word in the array to the empty string ("longestStr")
        4. IF the next word's length is greater than the current string ("longestStr") replace the word
        5. return longest string
    output: string (longest word)
*/

// function longestWord(words) {
//   var longestStr = "";
//     for (var i = 0; i < words.length; i ++) {
//       if (words[i].length > longestStr.length) {
//       longestStr = words[i];
//       }
//     }
//     return longestStr
// }

// // Driver Code
// // words = ["long phrase","longest phrase","longer phrase"]
// words = ["lions", "tigers", "wolfs", "elephant", "fox", "hippopotamus"]

// console.log(longestWord(words))




/* RELEASE 1
pseudocode::
  create a function that takes two objects and checks to see if they share at least one key-value
    input: object1, object2
      steps:
        1. compare keys
        2. IF keys match
          a. compare values
            b. IF at least one value matches
            c. return true
        3.If keys don't match - false
    output: boolean
*/

function compareObjects(object1, object2) {
    for (var key1 in object1) {
      for (var key2 in object2) {
        if (key1 === key2) {
          if (object1[key1] === object2[key2]) {
          return true;
          }
        }
      }
    }
    return false;
};


// object1 = {name: "Steven", age: 53}
// object2 = {age: 53, name: "Tamir"}

object1 = {dog: "Ruby", fur: "red", age: 2}
object2 = {cat: "Lucy", fur: "white", age: 1}

console.log(compareObjects(object1, object2))

/* RELEASE 2
pseudocode::
  create a function that takes an integer and builds that number of words into an array
    input: integer
      steps:
    output: array
*/

function wordBuilder(num)
var