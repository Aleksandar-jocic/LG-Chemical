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

$('.wrapper-dropdown-5').click(function () {


    if ($('.wrapper-dropdown-5').hasClass('active')) {
        $('.wrapper-dropdown-5').removeClass('active');
        
    }
    else {
        $('.wrapper-dropdown-5').addClass('active');
    }
});

$(".fa-arrow-down").click(function(event) {

    if ($(this).parents('.singleProduct').hasClass('expandProduct') || $(this).parents('.newsDiv').hasClass('expandNews')) {

        $(this).parents('.singleProduct').removeClass('expandProduct');
        $(this).parents('.newsDiv').removeClass('expandNews');
        
        $(this).removeClass('fa-arrow-up');

    } else {
        
        $(this).parents('.singleProduct').addClass('expandProduct');
        $(this).parents('.newsDiv').addClass('expandNews');
        
        $(this).addClass('fa-arrow-up');
    }

});

$(".mainList").click(function () {

    console.log('something');
    

});

function getBackground () {

    // $(this).parents('#output').css({'background-image': '../photos/slike/' + });

}

// document.querySelector(".readMore").addEventListener('click', function(event){


//     var s = event.target.className;
    
//     console.log(s);
//     console.log(event.target);
//     console.log(event.currentTarget);
   
//    });




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

window.onscroll = function() {fixNavbar(); hiddenClass()};

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

function hiddenClass () {

    if (window.innerWidth < 960 && pageYOffset > 300) {

        $('.wrapper-dropdown-5').removeClass('invisibleCircle');
    } else {

        $('.wrapper-dropdown-5').addClass('invisibleCircle');
    }
    
}

document.getElementById('target').addEventListener('click', function () {

    $('.catalogue').removeClass('show');
    $('.productTrigger').removeClass('triggerDrop');
    
    if ($('.options').hasClass('options-responsive')) {
        $('.options').removeClass('options-responsive');
        $('.carousel-indicators').removeClass('die');  
        
    }
    else {
        $('.options').addClass('options-responsive');
        $('.carousel-indicators').addClass('die');  
        
    }


   
})

$('.productTrigger').click(function () {

    if ($('.options').hasClass('redBorder')) {
        $('.options').removeClass('redBorder');
    }
    else {
        $('.options').addClass('redBorder');
    }

    if ($('.productTrigger').hasClass('triggerDrop')) {
        $('.productTrigger').removeClass('triggerDrop');
    }
    else {
        $('.productTrigger').addClass('triggerDrop');
    }


    if ($('.catalogue').hasClass('show')) {
        $('.catalogue').removeClass('show');
    }
    else {
        $('.catalogue').addClass('show');
    }
})

