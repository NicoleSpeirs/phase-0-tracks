// pseudocode
//will create a function that will accept a string
//and will print it in reverse
//since does not have the built in reverse function
//I will create a for loop that counts from top to bottom
//using i-- from the strings length

// function reverse (string)
//   newString = ""
//   loop from end to beginning of string as letter
//     add letter to newString
//   return string

var string = "Good Luck!\n";

function reverse(input) {
  var new_string = "";
  for (var i = input.length; i>=0; i--) {
    new_string += input[i];
  }
  return new_string;
}
console.log(reverse(string));
