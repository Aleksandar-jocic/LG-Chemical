var navbar = $('.overlay');
var logoText = $('.logoText');
var timeOne;
var timeTwo;
var handler;
var textAppear;

$(document).ready(function () {

    timeOne = setTimeout(handler, 0);  
    timeTwo = setTimeout(textAppear, 1000);
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
function scrollTo() {

    console.log("fired");
    
    window.scrollTo(0, 500); 
}
// $('a').click(function() {
//     console.log("boom");
    
//     $('html,body').animate({
//         scrollTop: $("#productDisplay").offset().top},
//         'slow');
// });

// $('a[href^="./products.php"]').click(function(e) {
//     e.preventDefault();
// });

window.onscroll = function() {fixNavbar();};

function scrolling() {

    var scroller = window.pageYOffset;
    console.log(scroller);
    
}
function refreshPage () {
    var page_y = $(document).scrollTop();
    console.log("i fired");
    
    window.location.href = window.location.href + '?page_y=' + page_y;
}

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