var navbar = $('.overlay');
var navbarOptions = $('.options');
var logoText = $('.logoText');
var timeOne;
var timeTwo;
var handler;
var textAppear;

$(document).ready(function () {

    timeOne = setTimeout(handler, 0);  
    timeTwo = setTimeout(textAppear, 1000);
})

window.onscroll = function() {scroll()};


function scroll () {

    var scroll = document.body.scrollTop;
    console.log(scroll);
    
}

handler = function() {
    navbar.addClass('overlay-active');
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
    navbarOptions.addClass('optionsBorder');
      
    } else {

      navbar.removeClass("sticky");
      navbarOptions.removeClass('optionsBorder');

    }    
}

document.getElementById('target').addEventListener('click', function () {

    if ($('.options').hasClass('options-responsive')) {
        $('.options').removeClass('options-responsive');
    }
    else {
        $('.options').addClass('options-responsive');
    }
})

document.getElementById('productTrigger').addEventListener('click', function () {

    if ($('.catalogue').hasClass('show')) {
        $('.catalogue').removeClass('show');
    }
    else {
        $('.catalogue').addClass('show');
    }
})