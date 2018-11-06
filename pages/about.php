<?php include "../productDB/serverConnection.php" ?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="../photos/favicon.ico" type="image/x-icon">
    <title>LG Hemija</title>
    <link rel="stylesheet" href="../css/preLoader.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Montserrat|Dancing+Script|Caveat" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
        crossorigin="anonymous">
</head>

<body>
    <div class="loader">
        <img src="../photos/39.gif" alt="">
    </div>
    <div class="container-fluid" id="aboutPage">
        <div class="imageContainer">

            <div class="aboutCover">
                <div class="aboutCoverText">
                    <div class='quoteWrap'>
                        <p>
                            " Modern chemistry, with its far-reaching generalizations and hypothesis, is a fine example of how far the human mind can go in exploring the unknown beyond the limits of human senses. " <br><span>Horace G. Deming</span>
                        </p>
                    </div>
                    
                </div>
            </div>
            <div class='aboutUsWrap'>
                <h1>O nama</h1>
                <div class="logoHR">
                    <img  src="../photos/logoIcon.png" alt="">
                </div>
            </div>
           
        </div>


        <div class="overlay">
            <div id="text">
                <div>
                    <a href="./index.html">
                        <img src="../photos/logoIcon.png">
                        <img class="logoText" src="../photos/logotext.png" alt="">
                    </a>
                </div>

                <div class="options">
                    <a href="../index.php">Početna</a>
                    <a href="./about.php">O nama</a>

                    <!-- product list catalogue -->
                    <a href="#!" class="productTrigger">Katalog Proizvoda</a>

                    <div class='catalogue'>
                        <ul>

                <?php 

                    $query = "SELECT * FROM main_group";
                    $select_all_main_groups = mysqli_query($connection, $query);

                    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

                        $main_name = $row['main_name'];
                        $main_id = $row['main_id'];

                        $writer = "<li class='productList'><a  href='../pages/products.php?main_id={$main_id}'>$main_name</a></li>";
                        
                        echo $writer;  
                    }
                    
                ?>
                        </ul>
                    </div>

                    <a href="./partners.php">Partneri</a>
                    <a href="./contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>

            </div>
        </div>
        <div class="aboutText">
            
            <div class='aboutParagraph'>
                <p>LG Hemija osnovana je 2001. godine sa ciljem da podrži proizvođače na
                    domaćem tržištu snabdevajući ih sirovinama od strane renomiranih inostranih
                    proizvođača.
                </p>
                <div class="markerSolid"></div>
            </div>
            
            
            <div class='aboutParagraph'>
            
            <p>
                LG Hemija je deo grupacije aktivne u proizvodnji i distribuciji polimera i drugih
                hemikalija. Fokusirana je na domaće tržište, a dobru saradnju razvija i sa
                firmama iz okruženja.
            </p>
            <div class="markerSolid"></div>
            </div>
            <div class='aboutParagraph'>
           
            <p>
                Proizvode plasiramo primarno u građevinskoj industriji, prehrambenoj
                industriji, industriji kozmetike i kućne hemije.
            </p>  
            <div class="markerSolid"></div>
            
            
            </div>
            <div class='aboutParagraph'>

                <p>Naši dugoročni ciljevi su
                plasiranje proizvoda proverenog kvaliteta od renomiranih dobavljača, pružanje
                prepoznatljive tehničke podrške i uspostavljanje višegodišnje, stabilne
                saradnje sa kupcima.
            </p>
            <div class="markerSolid"></div>
            </div>
            

            <div class='aboutParagraph'>
            <p>
                Ključna karakteristika kompanije je proširenje ponude proizvoda i usluga koje
                se sistemski prate i prenose na domaće tržište, na taj način doprinoseći
                zajedničkom razvoju.
            </p>
            </div>

        </div>

<!-- footer -->

        <?php include "../modules/footerRest.php" ?>

    </div>

    <script src="../javascript/preLoader.js"></script>
    <script src="../javascript/effects.js"></script>

</body>

</html>