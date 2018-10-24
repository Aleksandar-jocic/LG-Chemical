<?php include "../productDB/serverConnection.php"; ?>
<?php include "../productDB/functions.php"; ?>




<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LG hemija</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Montserrat|Sunflower:300" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
        crossorigin="anonymous">

</head>

<body>
    <div class="container-fluid">
        <div class="imageContainer">

            <div class="aboutCover">
            </div>

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
                    <a href="./about.html">O nama</a>
                    <a href="./products.php">Katalog Proizvoda</a>
                    <a href="./partners.html">Partneri</a>
                    <a href="./contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>
            </div>
        </div>

        <h1 id="productDisplay">Proizvodi</h1>
        <div class="logoHR">
                <img  src="../photos/logoIcon.png" alt="">
            </div>
        <div class="mainContainer">

<?php 
    getAllMain();
?>


        </div>

        <div id="output">

        <div class="subProductDiv">
        
<?php

if(isset($_GET['main_id'])) {

    $mainID = $_GET['main_id'];

    getSubGroupsWithMainID($mainID);

}

?>

        </div>

            <div class="productListDiv">

<?php


if(isset($_GET['sub_id'])) {

    $subID = $_GET['sub_id'];
    
    getProducts($subID);

}
?>

            </div>       
        </div>

        
    </div>
    <?php include "../modules/footerRest.php"; ?>

    <script src="../javascript/effects.js"></script>
</body>

</html>
