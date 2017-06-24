// 7.2 Mandatory Pairing: Data Structures

// Release 0 & 1
// ----------------
var colors = ["blue", "pink", "red", "yellow"];
var names = ["Ben", "Jim", "Tom", "Sue"];
var horses = {}

  for (var i = 0; i < colors.length; i++) {
    horses[names[i]] = colors[i];
  }

console.log(horses)


// ----------------
// Release 2
// ----------------
var car =  {
  make: 'Ford',
  year: 2017,
  isFast: true,
  speed: function(){
    if (this.isFast){
      console.log("I'm very fast!!");
    } else {
      console.log("I'm very slow. :(");
    }
  }
};

console.log(car.speed)

