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
    clampFeed();
    getFourStories();
});

function clampFeed () {

    var elementToClamp = $('.storyContent');

    for (var i = 0; i < elementToClamp.length; i++) {
        $clamp(elementToClamp.get(i), {clamp: 2});
    }
};

$('.fa-expand').click(function() {

    var storyId = $(this)[0].id.split('_')[1];

    var data = {singleStoryInfoWithId: storyId};

    $.ajax({

        url: '../modules/singleFeed.php',
        type: 'POST',
        data: data,
        success: function(response) {
            $('.newsModal').text('');
            $('.newsModal').append(response);
            console.log(response);
        }
    });
});

$('.getAllNews').click(function () {

    var allNews = window.document.getElementsByClassName('newsDiv');

    for(var i = 0; i < allNews.length; i++) {

        if (i > 3) {

            allNews[i].style.display = 'inline-block';
        }
    }
    $('.getAllNews').parent().css('display', 'none');
    $('.getBasicNews').css('display', 'block');
});
function getFourStories () {

    var allNews = window.document.getElementsByClassName('newsDiv');

    for(var i = 0; i < allNews.length; i++) {

        if (i > 3) {

            allNews[i].style.display = 'none';
        }
    }
    $('.getBasicNews').css('display', 'none');
    $('.getAllNews').parent().css('display', 'block');
}
$('.getBasicNews').click(function () {

    getFourStories();
    
});

$('.wrapper-dropdown-5').click(function () {

    if ($('.wrapper-dropdown-5').hasClass('active')) {

        $('.wrapper-dropdown-5').removeClass('active');
    }
    else {

        $('.wrapper-dropdown-5').addClass('active');
    }
});
$('.dropUpSuper > span').click(function () {

    if($('.dropUpSuper').hasClass('active')) {

        $('.dropUpSuper').removeClass('active');
        
    } else {

        $('.dropUpSuper').addClass('active');
    }
})

$(".fa-arrow-down").click(function(event) {

    if($(this).parents('.singleProduct').hasClass('expandProduct')) {

        $(this).parents('.singleProduct').removeClass('expandProduct');
        $(this).removeClass('fa-arrow-up');
        
    } else {

        $(this).parents('.singleProduct').addClass('expandProduct');
        $(this).addClass('fa-arrow-up');
        
    }

    if ($(this).parents('.newsDiv').hasClass('expandNews')) {
       
        $(this).next().next().removeClass('storyFull');
        $(this).parents('.newsDiv').removeClass('expandNews');
        $(this).removeClass('fa-arrow-up');

        
    } else {

        $(this).next().next().addClass('storyFull');
        $(this).parents('.newsDiv').addClass('expandNews');
        $(this).addClass('fa-arrow-up');


        console.log($(this).next().next()[0]);
        var elementToUnClamp = $(this).next().next()[0];
        
        $clamp(elementToUnClamp, {clamp: '300px'});
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

    if (window.innerWidth < 960) {

        for(var i = 0; i < tar.length; i++) {

            if(tar[i].clientHeight > 70) {
    
                tar[i].parentElement.previousElementSibling.previousElementSibling.lastElementChild.style.display = 'inline-block';
            }
        }
    }
    for(var i = 0; i < tar.length; i++) {

        if(tar[i].innerHTML === "") {
            tar[i].parentElement.style.display = 'none';
            tar[i].parentElement.previousElementSibling.style.cssText = "display: block; margin: 0 auto;";
        }
    }
    // console.log(tar[4].parentElement.previousElementSibling);
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