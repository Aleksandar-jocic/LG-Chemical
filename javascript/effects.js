var navbar = $('.overlay');
var logoText = $('.logoText');
var timeOne;
var timeTwo;
var handler;
var textAppear;

$(document).ready(function () {

    timeOne = setTimeout(handler, 1000);  
    timeTwo = setTimeout(textAppear, 1500);
})


handler = function() {
    navbar.addClass('overlay-active')
    console.log('handle works');
    clearTimeout()
}
$('.carousel').carousel({
    interval: 55000
})

textAppear = function() {
    logoText.addClass('logoText-active');
    console.log('offset works');
    clearTimeout()
    
}



window.onscroll = function() {fixNavbar()};


function fixNavbar() {
    
    if (window.pageYOffset > 0) {

      navbar.addClass("sticky");
      
    } else {

      navbar.removeClass("sticky");

    }    
}

document.getElementById('target').addEventListener('click', function () {

    if ($('.options').hasClass('options-responsive')) {
        $('.options').removeClass('options-responsive');
        console.log('if');
    }
    else {
        $('.options').addClass('options-responsive');
        console.log('else');
    }
})