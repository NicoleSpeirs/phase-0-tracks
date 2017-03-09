

var colors = ["blue", "purple", "pink", "red"];

var horses = ["Sparkles", "Zoe", "Mini", "Violet"];

console.log(horses[0]);

colors.push("green");
horses.push("Spot");


console.log(horses);
console.log(colors);
//
// #loop of horses
for (var i = 0; i < horses.length; i++) {
 console.log(horses[i]);
}

var horse_info = {name: 'Sparkles', colors: 'blue'};


// horse_colors = {
//   name: 'Sparkles', color: 'blue',
//   name: 'Zoe', color:'purple',
//   name: 'Mini', color: 'pink',
//   name: 'Violet', color: 'red',
//   name: 'Spot', color: 'green',
// }


var horse_colors = {
  'Sparkles': 'blue',
  'Zoe': 'purple',
  'Mini': 'pink',
  'Violet': 'red',
  'Spot': 'green',
}


// var new_horse = [],
//     horse_colors;

// for (var i = 0; i < colors.length; i++) {
//     horse_colors = {};
//     for (var i = 0; i < horses.length; i++) {
//       horse_colors[horses[i]] = colors[i][i];
//     }
//     new_horse.push(horse_colors)

//   console.log(horses[i]);
// }


console.log(horse_colors);

// console.log(new_horse.push(horse_colors));

console.log("The horse's name is " + horse_info['name'] + " and it's color is " + horse_info['colors'] + ".");

var horses = 'name';
console.log(horse_info[horses]);

var horses = 'colors';
console.log(horse_info[horses]);


// #we need to figure out how to make a universal loop to access printing all horses and their colors


// #Release 2 : Constructing a Car

var car = {brand: 'Lexus', 'year': 2009, isFastCar: true};


function Car(brand, year, isFastCar) {
 console.log("Our new car:", this);
 this.brand = brand;
 this.year = year;
 this.isFastCar= isFastCar;

 this.honk = function() {console.log("Beep Beep!"); };

 console.log("CAR INITIALIZATION COMPLETE");
}


 console.log("Let's build a car ...");
 var anotherCar = new Car("Toyota", 2010, false);
 console.log(anotherCar.brand);
 console.log("Our car can honk:");
 anotherCar.honk();
 console.log("----");

console.log("Let's build another car ...");
 var yetAnotherCar = new Car("Jeep", 2001, true);
 console.log(yetAnotherCar.brand);
 console.log("This new car can honk too:");
 yetAnotherCar.honk();
 console.log("----")




// #Release 3- Research


// 2. Yes the advantages are you can easily create a new object just by entering
// new information in the parameters. The disadvantages it can get a bit repetitive and
// the code is not DRY.
