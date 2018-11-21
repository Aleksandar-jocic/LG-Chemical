<?php include "./modules/head.php" ?>
<?php include "./productDB/serverConnection.php" ?>
<?php include "./productDB/functions.php"; ?>

<style media="screen">
    .loader {
        position: fixed;
        z-index: 99;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
        background: white;
        display: flex;
        justify-content: center;
        align-items: center;
        
    }
    .loader.hidden {
        animation: fadeOut 1s;
        animation-fill-mode: forwards;
    }
    @keyframes fadeOut {
        100% {
            opacity: 0;
            visibility: hidden;
        }
    }
</style>
<body>
<div class="loader">
    <img src="./photos/39.gif" alt="">
</div>

    <div class="container-fluid">

        <div class="imageContainer">

            <?php include "./modules/carousel.php" ?>

        </div>

        <div class="overlay">
            <div id="text">
                <div>
                    <a href="./index.php">
                        <img src="./photos/logoIcon.png">
                        <img class="logoText" src="./photos/logotext.png" alt="">
                    </a>
                </div>

                <div class="options">
                  <a href="./administration/admin.php">admin</a>
                    <a href="./index.php">Početna</a>
                    <a href="./pages/about.php">O nama</a>
                    <a href="#!" class="productTrigger">Katalog Proizvoda</a>

                    <div class='catalogue'>
                        <ul>
<?php 
getAllMainForHeader();
?>
                        </ul>
                    </div>

                    <a href="./pages/partners.php">Partneri</a>
                    <a href="./pages/contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>
            </div>
        </div>

        <!-- BELLOW CAROUSEL -->

        <div class="mainSection">
            <h4 id='breaker'>Proizvodi hemijske industrije</h4>
            
            <p>LG HEMIJA D.O.O. je deo grupacije LOUFAKIS CHEMICALS SA., koja se bavi distribucijom hemijskih proizvoda namenjenih
                industriji: </p>
            <ul>
                <li><i class="fas fa-chevron-circle-right"></i> materijala za završne radove u građevinarstvu, </li>
                <li><i class="fas fa-chevron-circle-right"></i> prehrane</li>
                <li><i class="fas fa-chevron-circle-right"></i> tekstila i kože, </li>
                <li><i class="fas fa-chevron-circle-right"></i> deterdženata i kućne hemije</li>
            </ul>
        </div>

        <!-- NEWS AREA -->

        <div id="newsCover">
            <h1>Aktuelnosti</h1>
            <!-- <div class="logoHRWhite">
                <img  src="./photos/logoIcon.png" alt="">
            </div> -->
        
            <div id="feed" class="row">
<?php 
storyTeller();
?> 
            </div>
        </div>

        <!-- PRODUCTS AREA -->

        <div class="selection">
            <div class="col-lg-12">
                <h1>Proizvodi</h1>
                <!-- <div class="logoHR">
                    <img  src="./photos/logoIcon.png" alt="">
                </div>   -->
            </div>

            <div class="row" id="mainProducts">
<?php 
getAllMainForIndexProducts();
?>
            </div>
        </div>
    
    <?php include "./modules/footer.php" ?>
    
    </div>    

    <script type="text/javascript"> 
        window.addEventListener('load', function () {
            
            const loader = document.querySelector(".loader");
            
            loader.className += " hidden";
        });
    </script>
    <script src="./javascript/effects.js"></script>
</body>
</html>