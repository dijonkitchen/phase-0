// DOM Manipulation Challenge


// I worked on this challenge Andrew Blum and Jonathan Chen


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";

// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:

document.getElementsByTagName("h1")[0].innerHTML = "I completed Release 2";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var elements = document.getElementsByClassName("release-4");
for (var index = 0; index < elements.length; index++) {
	elements[index].style.fontSize = "2em";
}

// Release 5:


var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection
/*
What did you learn about the DOM?

I learned about the hierarchy and modifying things by ID and by tag with JS.

What are some useful methods to use to manipulate the DOM?

getElementById, getElementsByTagName, getElementsByClassName, className, style
*/
