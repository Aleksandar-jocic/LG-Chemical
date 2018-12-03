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

    // else if (window.location.pathname == '/pages/products.php') {

    //     product();

    // }
})

$('.getAllNews').click(function () {

    // var el = this;
    // var id = this.id;

    var data = {getAllNews: 1};

    $.ajax({

        url: '../modules/feed.php',
        type: 'POST',
        data: data,
        success: function(response) {

            $('.getAllNews').remove();
            $('#feed').append(response);

            console.log(response);
        }
    })
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

    if ($(this).parents('.singleProduct').hasClass('expandProduct') || $(this).parents('.newsDiv').hasClass('expandNews') || $(this).parents('.alignText').hasClass('.expandPartners')) {

        $(this).parents('.singleProduct').removeClass('expandProduct');
        $(this).parents('.newsDiv').removeClass('expandNews');
        // $(this).parents('.alignText').removeClass('expandPartners');
        
        
        $(this).removeClass('fa-arrow-up');

    } else {
        
        $(this).parents('.singleProduct').addClass('expandProduct');
        $(this).parents('.newsDiv').addClass('expandNews');
        // $(this).parents('.alignText').addClass('expandPartners');
        
        
        $(this).addClass('fa-arrow-up');
    }
});

$(".mainList").click(function () {

    console.log('something');

});

function getBackground () {

    // $(this).parents('#output').css({'background-image': '../photos/slike/' + });

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

window.onscroll = function() {fixNavbar(); hiddenClass();};

// function feed() {

//     var tar = $('.storyContent');
//     console.log(tar[1].previousElementSibling.previousElementSibling);
    

//     for(var i = 0; i < tar.length; i++) {

//         if(tar[i].clientHeight > 40) {

//             tar[i].previousElementSibling.previousElementSibling.style.display = 'inline-block';

//         }
//     }
// }

function product() {

    var tar = $('.productDescription > p');

    for(var i = 0; i < tar.length; i++) {

        if(tar[i].clientHeight > 70) {

            tar[i].parentElement.previousElementSibling.lastChild.style.display = 'inline-block';
        }
    }
}

// function partner() {

//     var tar = $('.alignText > p');

//     for(var i = 0; i < tar.length; i++) {

//     }
// }

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