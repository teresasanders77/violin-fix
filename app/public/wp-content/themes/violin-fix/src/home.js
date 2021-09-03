// functions of all event listners
function allEventListners() {
    // define all UI variable
    var navToggler = document.querySelector(".nav-toggler");
    var navMenu = document.querySelector(".site-navbar ul");
    var navLinks = document.querySelectorAll(".site-navbar a");
    // toggler icon click event
    navToggler.addEventListener("click", togglerClick);
    // nav links click event
    navLinks.forEach((elem) => elem.addEventListener("click", navLinkClick));
}

// togglerClick function
function togglerClick() {
    var navToggler = document.querySelector(".nav-toggler");
    var navMenu = document.querySelector(".site-navbar ul");
    var navLinks = document.querySelectorAll(".site-navbar a");
    navToggler.classList.toggle("toggler-open");
    navMenu.classList.toggle("open");
}

// navLinkClick function
function navLinkClick() {
    var navToggler = document.querySelector(".nav-toggler");
    var navMenu = document.querySelector(".site-navbar ul");
    var navLinks = document.querySelectorAll(".site-navbar a");
    if (navMenu.classList.contains("open")) {
        navToggler.click();
    }
}

document.addEventListener("DOMContentLoaded", function () {
    allEventListners();
});
