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

function longestWord(words) {
  var longestStr = "";
    for (i = 0; i < words.length; i ++) {
      if (words[i].length > longestStr.length) {
      longestStr = words[i];
      }
    }
    return longestStr
}

// Driver Code
// words = ["long phrase","longest phrase","longer phrase"]
words = ["lions", "tigers", "wolfs", "elephant", "fox", "hippopotamus"]

console.log(longestWord(words));

