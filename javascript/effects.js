var navbar = $('.overlay');
var navbarOptions = $('.options');
var logoText = $('.logoText');
var catalogue = $('.catalogue');
var carouselIndex = $('carousel-indicators');
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
// window.onscroll = function() {fixCarousel()};


function fixNavbar() {
    
    if (window.pageYOffset > 0) {

    navbar.addClass("sticky");
    navbarOptions.addClass('optionsBorder');
    catalogue.addClass('dropSpace');
      
    } else {

    navbar.removeClass("sticky");
    navbarOptions.removeClass('optionsBorder');
    catalogue.removeClass('dropSpace');
    
    }    
}

// function fixCarousel() {

//     if (window.pageYOffset === 0 && window.innerWidth < 960) {

//         console.log('yaaaas');
        
//         $('carousel-indicators').addClass('die');      
//     }
//     else {
//         $('carousel-indicators').removeClass('die');
//     }
// }

document.getElementById('target').addEventListener('click', function () {

    $('.catalogue').removeClass('show');
    $('#productTrigger').removeClass('triggerDrop');
    
    if ($('.options').hasClass('options-responsive')) {
        $('.options').removeClass('options-responsive');
        $('.carousel-indicators').removeClass('die');  
        
    }
    else {
        $('.options').addClass('options-responsive');
        $('.carousel-indicators').addClass('die');  
        
    }


   
})

document.getElementById('productTrigger').addEventListener('click', function () {

    if ($('.options').hasClass('redBorder')) {
        $('.options').removeClass('redBorder');
    }
    else {
        $('.options').addClass('redBorder');
    }

    if ($('#productTrigger').hasClass('triggerDrop')) {
        $('#productTrigger').removeClass('triggerDrop');
    }
    else {
        $('#productTrigger').addClass('triggerDrop');
    }


    if ($('.catalogue').hasClass('show')) {
        $('.catalogue').removeClass('show');
    }
    else {
        $('.catalogue').addClass('show');
    }
})