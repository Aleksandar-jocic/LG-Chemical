<?php include "../productDB/functions.php"; ?>
<?php include "../modules/headRest.php"; ?>


<body>
<div class="loader">
    <img src="../photos/39.gif" alt="">
</div>
    <div class="container-fluid">
        <div class="imageContainer">
            <div class="partnersCover"></div>
        </div>

        <div class="overlay">
            <div id="text">
                <div>
                    <a href="../index.html">
                        <img src="../photos/logoIcon.png">
                        <img class="logoText" src="../photos/logotext.png" alt="">
                    </a>
                </div>

                <div class="options">
                    <a href="../index.php">Početna</a>
                    <a href="./about.php">O nama</a>
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

        <!-- PARTNERS SINGLE -->
        <div class="PartnersWrap">
            <h1>Naši partneri</h1>
            <div class="logoHR">
                <img  src="../photos/logoIcon.png" alt="">
            </div>
        </div>

        <div class='partnersMain'>
            <div class="partners">

                <div class="partnerWrap">
                    <div class="alignImage">
                        <a class="" href="http://www.biooscientific.com/" target='_blank'> 
                            <img src="../partners/BIOOlogo.png" alt="">
                        </a>
                    </div>

                    <div class="alignText">
                        <p>Bioo Scientific Corporation, osnovan 2003. god., Austinu, Teksas, kompanija koja se bavi biotehnologijom i pruža inovativna rešenja za food &amp; feed safety. Nagrađena NIH, NSF, FDA i USDA kvalitetom, koji je doprineo daljem razvitak. Bioo Scientific nudi širok asortiman ELISA testova, strip testova, testova na enzyme, otkrivanje mikrobioloških i industrijskih zagađivača, prirodnih toksina, hormona, antibiotika i drugih ostataka veterinarskih lekova u stočnoj hrani.
                        </p>
                    </div>
                </div>

                <div class="partnerWrap">

                    <div class="alignImage">
                        <a class="" href="http://www.cff.de/de/" target='_blank'>
                            <img src="../partners/cfflogo.png" alt="">
                        </a>
                    </div>

                    <div class="alignText">
                        <p>CFF GmbH &amp; Co. KG je Vaš snažan partner u prirodnim celuloznim vlaknima, sa globalnom mrežom u različitim tipovima industrije. CFF celulozna vlakna, proizvedena od organskih i obnovljivih sirovina, koriste se u izgradnji puteva, građevinskoj industriju, industrijskoj aplikaciji, filtraciji i prehrambenoj industriji. Priroda i rasprostranjenost CFF proizvoda je jedan od najvažnijih faktora uspeha. Rado će Vas uveriti u pitanja tehnologije, inovacija, kvaliteta i usluga i sarađivati sa Vama kako biste poboljšali svoje proizvode i proizvodni proces.
                        </p>
                        <div class='dropUpSuper'>
                            <span>Download pdf</span>
                            <div class='dropUp'>
                                <a href="../partners/CFFpdf.pdf" download>CFF</a>
                                <a href="../partners/CFF-healthyAspects.pdf" download>Healthy aspects</a>
                                <a href="../partners/SANACEL-dietaryFibre.pdf" download>Dietary fibre</a>
                                <a href="../partners/SANACEL-functionalFibres.pdf" download>Functional fibres</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="partnerWrap">

                    <div class="alignImage">
                        <a class="" href="http://www.kukdo.com/" target='_blank'>
                            <img src="../partners/KUKDO-logo.png" alt="">
                        </a>
                    </div>

                    <div class="alignText">
                        <p>Kukdo Chemical Industry. Co., Ltd., osnovan 1972. god. u Seulu, Koreja, svetski je lider u proizvodnji epoksi smola. Shodno potrebama, logistički centar postavljen je u Evropi, čime klijentima obezbeđuju siguran i efikasan transport svojih proizvoda. Sa zaokruženim rešenjem, inovativnim materijalima, racionalnim troškovima, tu su da Vam pruže kontinuiranu podršku i odgovore na Vaše potrebe.
                        </p>
                        <div class='pdfDownload'>
                            <a href="../partners/Kukdopdf.pdf" download>Download pdf</a>
                        </div>
                    </div>
                </div>

                <div class="partnerWrap">

                    <div class="alignImage">
                        <a class="" href="http://yipinusa.com/" target='_blank'>
                            <img src="../partners/YIPINlogo.png" alt="">
                        </a>
                    </div>

                    <div class="alignText">
                        <p>Yipin pigmenti, svetski lideri u industriji pigmenata od 1931. god.. Raspolaže punom linijom mikroniziranih gvožđe oksida, hrom oksida zelene, ultramarin plave, ftalata plave i zelene, perlascentnih pigmenata, termostabilnih pigmenata, i antikorozivnih proizvoda za primenu u hemijskoj industriji. Raznolikost kvaliteta pigmenata u zavisnosti od tipa primene, omogućio je plasiranje proizvoda i u kozmetičkoj industriji i prehrambenoj industriji (FDA).
                        </p>
                    </div>
                </div>

                <div class="partnerWrap">
                    <div class="alignImage">
                        <a class="" href="https://www.linkedin.com/company/guangxi-chesir-pearl-material-co-ltd" target='_blank'>
                            <img src="../partners/chesirlogo.png" alt="">
                        </a>
                    </div>

                    <div class="alignText">
                        <p>Guangxi Chesir Pearl Material Co.,Ltd, osnovan 2011. god., vodeći internacionalni proizvođač pearlescenih pigmenata za industriju boja i lakova, štamparije, plastiku i industriju kozmetike. Godišnji kapacitet od 10000mt perlescentnih pigmenata i 5000mt sintetičke mike, sertifikovani kvalitet, i kontinuirana ekspanzija i inovacija, omogućavaju ovoj kompaniji da se nađe na liderskoj poziciji, među najboljima na tržištu.
                        </p>
                        <div class='pdfDownload'>
                            <a href="../partners/Chesirpdf.pdf" download>Download pdf</a>
                        </div>
                    </div>
                </div>
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