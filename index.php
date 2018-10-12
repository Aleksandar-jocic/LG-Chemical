<?php include "./modules/head.php" ?>
<?php include "./productDB/serverConnection.php" ?>


<body>
    
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
                    <a href="./index.php">Početna</a>
                    <a href="./pages/about.html">O nama</a>
                    <a href="./pages/products.php">Katalog Proizvoda</a>
                    <a href="./pages/partners.html">Partneri</a>
                    <a href="./pages/contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>
            </div>
        </div>

        <br>
        <br>
        <hr>


        <div class="mainSection">
            <h1>LG HEMIJA</h1>
            <h4>proizvodi hemijske industrije</h4>
            <p>LG HEMIJA D.O.O. je deo grupacije LOUFAKIS CHEMICALS SA., koja se bavi distribucijom hemijskih proizvoda namenjenih
                industriji: </p>
            <ul>
                <li>materijala za završne radove u građevinarstvu, </li>
                <li>prehrane</li>
                <li>tekstila i kože, </li>
                <li>deterdženata i kućne hemije</li>
            </ul>
        </div>


        <div id="feed">

     <?php 

$query = "SELECT * FROM story";
$select_feed = mysqli_query($connectionFeed, $query);

while($row = mysqli_fetch_assoc($select_feed)) {

    $story_title = $row['story_title'];
    $story_date = $row['story_date'];
    $story_content = $row['story_content'];
    

    $burner = "<div><h1>{$story_title}</h1><p>{$story_date}</p><p>{$story_content}</p></div>";

    echo $burner;
}
    
    ?> 

        </div>

        <hr>
        <br>
        <br>

        <div class="selection">
            <div class="col-lg-12">
                <h1>Proizvodi</h1>
            </div>
            <div class="row" id="mainProducts">
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/welder.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">INDUSTRIJA GRAĐEVINSKIH MATERIJALA</div>
                    </div>


                </div>
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/plants.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">PREHRAMBENA INDUSTRIJA</div>
                    </div>


                </div>
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/Thread.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">TEKSTILNA INDUSTRIJA</div>
                    </div>


                </div>
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/house.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">INDUSTRIJA KUĆNE HEMIJE</div>
                    </div>


                </div>
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/pietri dish.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">BAZNA HEMIJA</div>
                    </div>
                </div>
                <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
                    <img src="./photos/Smoke.jpg" alt="Card image cap">
                    <div class="middle">
                        <div class="text">Industrijski mirisi</div>
                    </div>
                </div>
            </div>
        </div>

        <?php include "./modules/footer.php" ?>

    </div>
    <script src="./javascript/effects.js"></script>
    
</body>

</html>