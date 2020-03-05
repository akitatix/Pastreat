console.log('gfdfds');

let togg1 = document.getElementById("main-navbar-button");
let d1 = document.getElementById("main-navbar-menu");
let burger = document.getElementById("navbar-img1");
let cross = document.getElementById("navbar-img2");

let togg2 = document.getElementById("togg2");
let d2 = document.getElementById("d2");

togg1.addEventListener("click", () => {
  d1.classList.toggle("open");
  console.log("je suis la");
  burger.classList.toggle("off");
  cross.classList.toggle("one");
});
