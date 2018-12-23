<?php include "../productDB/serverConnection.php" ?>
<?php include "../productDB/functions.php"; ?>
<?php include "../modules/headRest.php"; ?>

<body>
<div class="loader">
    <img src="../photos/preLoad.gif" alt="">
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
                    <a href="../index.php">
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
getAllMainForHeaderPages();
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
                    proizvođača. LG Hemija je deo grupacije aktivne u proizvodnji i distribuciji polimera i drugih
                    hemikalija. Fokusirana je na domaće tržište, a dobru saradnju razvija i sa
                    firmama iz okruženja.
                </p>
                <div class="markerSolid"></div>
            </div>
       
            <div class='aboutParagraph'>
                <i class="fas fa-box-open"></i><span><strong>Plasman proizvoda</strong></span>
                <p>
                    Proizvode plasiramo primarno u građevinskoj industriji, prehrambenoj
                    industriji, industriji kozmetike i kućne hemije.
                </p>  
            </div>

            <div class='aboutParagraph'>
                <i class="fas fa-bullseye"></i><span><strong>Ciljevi</strong></span>
                <p>Naši dugoročni ciljevi su
                plasiranje proizvoda proverenog kvaliteta od renomiranih dobavljača, pružanje
                prepoznatljive tehničke podrške i uspostavljanje višegodišnje, stabilne
                saradnje sa kupcima.
                </p>
            </div>

            <div class='aboutParagraph'>
                <i class="fas fa-key"></i><span><strong>Ključna karakteristika kompanije</strong></span>
                <p>
                    Predstavlje proširenje ponude proizvoda i usluga koje
                    se sistemski prate i prenose na domaće tržište, na taj način doprinoseći
                    zajedničkom razvoju.
                </p>
            </div>

        </div>

        <div class='grayScale'></div>

        <!-- footer -->
        <?php include "../modules/footerRest.php" ?>

    </div>

    <script src="../javascript/preLoader.js"></script>
    <script src="../javascript/effects.js"></script>
</body>
</html>