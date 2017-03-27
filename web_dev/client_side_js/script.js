console.log("The script is running");


function addPurpleBorder (event) {
  console.log("click happened");
  console.log(event);
  event.target.style.border = "2px dashed purple";
}

var photo = document.getElementById("dog-wig-photo");
photo.addEventListener("click", addPurpleBorder);
