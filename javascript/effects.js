var navbar = $('.overlay');
var navbarOptions = $('.options');
var logoText = $('.logoText');
var catalogue = $('.catalogue');
var carouselIndex = $('carousel-indicators');
var timeOne;
var timeTwo;
var handler;
var textAppear;
var feed;
var product;

$(document).ready(function () {

    timeOne = setTimeout(handler, 0);  
    timeTwo = setTimeout(textAppear, 1000);

    if (window.location.pathname == '/pages/products.php') {

        product();
    } 
});

$('.getAllNews').click(function () {

    var data = {getAllNews: 1};
    
    $.ajax({

        url: '../modules/feed.php',
        type: 'POST',
        data: data,
        success: function(response) {

            $('.getAllNews').css('display', 'none');
            $(response).insertBefore('.getBasicNews');
            $('.getBasicNews').css('display', 'block');
        }
    })
});
$('.getBasicNews').click(function () {

    var allNews = $('.newsDiv');

    for(var i = 0; i < allNews.length; i++) {

        if (i > 3) {

            allNews[i].remove();
        }
    }
    $('.getBasicNews').css('display', 'none');
    $('.getAllNews').css('display', 'block');
});

$('.wrapper-dropdown-5').click(function () {

    if ($('.wrapper-dropdown-5').hasClass('active')) {

        $('.wrapper-dropdown-5').removeClass('active');
    }
    else {

        $('.wrapper-dropdown-5').addClass('active');
    }
});
$('.dropUpSuper').click(function () {

    if($('.dropUpSuper').hasClass('active')) {

        $('.dropUpSuper').removeClass('active');
        
    } else {

        $('.dropUpSuper').addClass('active');
    }
})

$(".fa-arrow-down").click(function(event) {

    if ($(this).parents('.singleProduct').hasClass('expandProduct') || $(this).parents('.newsDiv').hasClass('expandNews') || $(this).parents('.alignText').hasClass('.expandPartners')) {

        $(this).parents('.singleProduct').removeClass('expandProduct');
        $(this).parents('.newsDiv').removeClass('expandNews');
        $(this).removeClass('fa-arrow-up');

    } else {
        
        $(this).parents('.singleProduct').addClass('expandProduct');
        $(this).parents('.newsDiv').addClass('expandNews');
        $(this).addClass('fa-arrow-up');
    }
});

handler = function() {
    navbar.addClass('overlay-active');
    clearTimeout()
}

$('.carousel').carousel({
    interval: 3500
})

textAppear = function() {
    logoText.addClass('logoText-active');
    clearTimeout()
}

window.onscroll = function() {fixNavbar(); hiddenClass();};

function product() {

    var tar = $('.productDescription > p');

    for(var i = 0; i < tar.length; i++) {

        if(tar[i].clientHeight > 70) {

            tar[i].parentElement.previousElementSibling.lastChild.style.display = 'inline-block';
        }
    }
}

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
//      onscroll after window offset passes element offset      //
// offset()
// function offset () {
//     var windowOffset = window.pageYOffset;
//     var targetOffset = $('#breaker').offset()['top'];
//     // console.log(windowOffset);
// }