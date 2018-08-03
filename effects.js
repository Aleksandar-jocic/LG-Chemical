var navbar = $('.overlay');
var myVar;
var handler;

$(document).ready(function () {

    myVar = setTimeout(handler, 1000);    
})

window.onscroll = function() {fixNavbar()};

handler = function() {
    navbar.addClass('overlay-active')
    console.log('handle works');
    clearTimeout()
}
$('.carousel').carousel({
    interval: 50000
  })

function fixNavbar() {
    
    if (window.pageYOffset > 0) {

      navbar.addClass("sticky");
      
    } else {

      navbar.removeClass("sticky");

    }    
}

