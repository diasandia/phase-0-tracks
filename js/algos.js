// 7.3 Solo Challenge: Algorithm Practice

function longestWord(words) {
  var longestStr = "";
    for (var i = 0; i < words.length; i ++) {
      if (words[i].length > longestStr.length) {
      longestStr = words[i];
      }
    }
    return longestStr
}


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


function wordBuilder(num) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var wordsList = [];
  var randomWord = "";
    for (var i = 0; i < Math.random() * (10 - 1); i++) {
      randomWord += alphabet[Math.floor(Math.random() * (alphabet.length))];
    };
    for (var i = 0; i < num; i++){
       wordsList.push(randomWord);
    };
    return wordsList;
};

//---Driver Code---//

//Release 0::
// words = ["long phrase","longest phrase","longer phrase"]
words = ["lions", "tigers", "wolfs", "elephant", "fox", "hippopotamus"]
console.log(longestWord(words))


//Release 1::
// object1 = {name: "Steven", age: 53}
// object2 = {age: 53, name: "Tamir"}
object1 = {dog: "Ruby", fur: "red", age: 2}
object2 = {cat: "Lucy", fur: "white", age: 1}
console.log(compareObjects(object1, object2))

//Release 2::
console.log(wordBuilder(3));

for (var counter = 0; counter < 10; counter++) {
console.log(longestWord(wordBuilder(3)));
}


//---PSEUDOCODE---//

/*
RELEASE 0
  create a function that takes an array of words and returns the longest word
    input: array
      steps:
        1. create an empty string ("longestStr")
        2. create the FOR loop
        3. store the first word in the array to the empty string ("longestStr")
        4. IF the next word's length is greater than the current string ("longestStr") replace the word
        5. return longest string
    output: string (longest word)

RELEASE 1
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

RELEASE 2
  create a function that takes an integer and builds that number of words into an array
    input: integer
      steps:
        1. create an alphabet variable, empty word array, & empty string
        2. create for loop
        3. generate a random word (randomly varying length, with a minimum of 1 letter and a maximum of 10 letters)
        3. push words to empty array
    output: array
*/