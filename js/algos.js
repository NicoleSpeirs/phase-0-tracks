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
