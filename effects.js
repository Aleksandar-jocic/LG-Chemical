var navbar = $('.overlay');
var myVar;

var handler = function() {
    navbar.addClass('overlay-active')
    console.log('handleworks');
    clearTimeout()
}


$(document).ready(function () {

    myVar = setTimeout(handler, 1000);    

})

window.onscroll = function() {myFunction()};


function myFunction() {
    if (window.pageYOffset > 0) {
      navbar.addClass("sticky")
    console.log('hello');
      
    } else {
      navbar.removeClass("sticky");
    console.log('bollocks');
      
    }
    
}

