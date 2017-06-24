// 7.2 PP

var colors = ["blue", "pink", "red", "yellow"];
var names = ["Ben", "Jim", "Tom", "Sue"];

var horses = {}

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)

// colors.push("green");
// names.push("Sam");

// driver code
