<?php include "./modules/head.php" ?>

<body>
    
    <div class="container-fluid">

        <div class="imageContainer">

            <div id="slides" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="imgOne">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgTwo">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgThree">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgFour">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgFive">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgSix">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="imgSeven">
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#slides" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#slides" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                <ol class="carousel-indicators">
                    <li data-target="#slides" data-slide-to="0" class="active">O nama</li>
                    <li data-target="#slides" data-slide-to="1">Građevinska industrija</li>
                    <li data-target="#slides" data-slide-to="2">Prehrambena industrija</li>
                    <li data-target="#slides" data-slide-to="3">Industrijski mirisi</li>
                    <li data-target="#slides" data-slide-to="4">Tekstilna Industrija</li>
                    <li data-target="#slides" data-slide-to="5">Bazna hemija</li>
                    <li data-target="#slides" data-slide-to="6">Kućna hemija</li>

                </ol>
            </div>
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

        <div class="footer">

            <div class="footImage">
                <img src="./photos/logo.png" alt="">
                <img id='iconPic' src="./photos/logoIcon.png" alt="">
            </div>

            <div class="row ">

                <div class="col-4 footerLinks">
                    <ul>
                        <li>
                            <a href="./about.html">O nama</a>
                        </li>
                        <li>
                            <a href="./about.html">Proizvodi</a>
                        </li>
                        <li>
                            <a href="./about.html">Partneri</a>
                        </li>
                        <li>
                            <a href="./contact.html">Kontakt</a>
                        </li>
                    </ul>
                </div>

                <div class="verticalLine col-4">
                </div>

                <div class="col-4 footerContacts">
                    <h6>LG HEMIJA</h6>
                    <div>
                        <p>
                            <i class="fas fa-map-marker-alt"></i> Bulevar Mihajla Pupina 3/3</p>
                        <p>
                            <i class="fas fa-phone"></i>Telefon: 011/66 00 191</p>
                        <p>
                            <i class="fas fa-envelope-open"></i>Email:
                            <a href="mailto:office@lghemija.co.rs"> office@lghemija.co.rs</a>
                        </p>
                    </div>
                    <h6>Magacin</h6>
                    <div>
                        <p>
                            <i class="fas fa-phone"></i>Telefon: 063 248 053</p>
                    </div>
                </div>
                <div class="col-12 Copyright">
                    <p>Copyright
                        <i class="far fa-copyright"></i> 2018</p>
                </div>
            </div>
        </div>

    </div>
    <script src="./javascript/effects.js"></script>
<!-- 
    <script src="./main.js" type="module"></script>
    
    <script src="./data.js" type="module"></script> -->
    
</body>

</html>