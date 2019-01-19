<?php include "../productDB/serverConnection.php"; ?>
<?php include "../productDB/functions.php"; ?>
<?php include "../modules/headRest.php"; ?>
<?php include "../modules/modal.php"; ?>


<body>
<div class="loader">
    <img src="../photos/preLoad.gif" alt="">
</div>
    <div class="container-fluid">

        <div class="imageContainer">
            <div class="productCover"></div>
        </div>

        <div class="overlay">
            <div id="text">
                <div>
                    <a href="../index.php">
                        <img src="../photos/logoIcon.png">
                        <img class="logoText" src="../photos/logotext.png" alt="">
                    </a>
                </div>

                <div class="options">
                    <a href="../index.php">Početna</a>
                    <a href="./about.php">O nama</a>
                    <a href="./products.php?main_id=1&sub_id=1&page=1">Katalog Proizvoda</a>
                    <a href="./partners.php">Partneri</a>
                    <a href="./contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>
            </div>
        </div>
        <div class='productsWrap'>
            <h1 id="productDisplay">Proizvodi</h1>
        </div>

        <!-- PRODUCT LIST -->
        <div class="mainContainer">
            
<?php 
    getAllMain();
?>
        </div>

        <div id="output">

            <div class="subProductDiv">
        
<?php
if(isset($_GET['main_id'])) {

        getSubGroupsWithMainID($_GET['main_id']);
}
?>
            </div>

            <div class="productListDiv">
<?php
if(isset($_GET['main_id'])) {

    $mainID = $_GET['main_id'];
    if($mainID == 6) {
        
        getChemeter();
    }
}

if(isset($_GET['sub_id'])) {

    getProducts($_GET['sub_id']);

}
?>
            </div> 
        </div>
    </div>

    <div class='grayScale'></div>

    <?php include "../modules/footerRest.php"; ?>

    <div id="toTop" class="wrapper-dropdown-5 invisibleCircle">
        <i class="fas fa-arrow-circle-up"></i>
        <ul class="dropdown">
            <li><a href="#">Vrh</a></li>
            <li><a href="#output">Proizvodi</a></li>
        </ul>
    </div> 

    <script src="../javascript/preLoader.js"></script>
    <script src="../javascript/clamp.js"></script>
    <script src="../javascript/effects.js"></script>
</body>
</html>