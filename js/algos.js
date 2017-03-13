//algorithm
//function longestString (string)
//  add array
//   loop through array
//   return longest string

var holidayNames = ["Martin Luther King Jr.", "Independence Day", "Thanksgiving Day"];
var fruits = ["apple", "banana", "orange"]

function longestPhrase(arr) {
  var howLong = 0;
  var theLongest;

  for(var i=0; i < arr.length; i++){
    if(arr[i].length > howLong){
      howLong = arr[i].length;
      theLongest = arr[i];
    }
  }
  return theLongest;
}

console.log(longestPhrase(holidayNames));
console.log(longestPhrase(fruits));

function compare(obj1, obj2) {
  for (var key in obj1) {
    if (obj2[key] !== undefined) {
      console.log("match!");
      return true;
    }
  }
  console.log("no matches found...");
  return false;
}

var bob = {name: "Bob", age: 30, gender: "male"};
var dylan = {name: "Dylan", age: 31};
var toby = {legs: 4};

console.log(compare(bob, dylan));
console.log(compare(bob, toby));
