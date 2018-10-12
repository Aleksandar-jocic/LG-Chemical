<?php include "../productDB/serverConnection.php"; ?>
<?php include "../productDB/functions.php"; ?>


<?php

if($connection) {

    echo "connection to db established" .'<br><br><br>';
    
}



if(isset($_GET['main_id'])) {

    $mainID = $_GET['main_id'];

    getSubGroupsWithMainID($mainID);

}
if(isset($_GET['sub_id'])) {

    $subID = $_GET['sub_id'];
    
    echo "products loaded";

    getProducts($subID);

}
?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LG hemija</title>
    <link rel="stylesheet" href="./css/bootstrap.css">
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

            <div id="output">

                <div class="selection">
                    <div class="col-lg-12">
                    <h1>Proizvodi</h1>
                </div>
                <div class="row" id="mainProducts">

                <?php 

                    $query = "SELECT * FROM main_group";
                    $select_all_main_groups = mysqli_query($connection, $query);

                    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

                        $main_name = $row['main_name'];
                        $main_id = $row['main_id'];

                        echo "<div class='Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12'>
                            <img src='../photos/welder.jpg' alt='Card image cap'>
                            <div class='middle'>
                            <div class='text'><a href='./products.php?main_id={$main_id}' >{$main_name}</a> </div>
                            </div>
                            </div>";
                    }
                ?>
            </div>

        </div>
    </div>
    
    <script src="../javascript/effects.js"></script>

</body>

</html>
