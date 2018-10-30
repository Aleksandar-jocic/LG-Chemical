<?php include "./modules/head.php" ?>
<?php include "./productDB/serverConnection.php" ?>
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
                    <a href="./pages/about.html">O nama</a>
                    <a href="#!" id="productTrigger">Katalog Proizvoda</a>



                    <div class='catalogue'>
                        <ul>

                <?php 

                    $query = "SELECT * FROM main_group";
                    $select_all_main_groups = mysqli_query($connection, $query);

                    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

                        $main_name = $row['main_name'];
                        $main_id = $row['main_id'];

                        $writer = "<li class='productList'><a  href='./pages/products.php?main_id={$main_id}'>$main_name</a></li>";
                        
                        echo $writer;  
                    }
                    
                ?>

                        </ul>
                </div>
                    <a href="./pages/partners.html">Partneri</a>
                    <a href="./pages/contact.html">Kontakt</a>
                </div>
                <i class="fa fa-bars" id="target"></i>
            </div>
        </div>

        <div class="mainSection">
            <h1>LG HEMIJA</h1>
            <div class="logoHR">
                <img  src="./photos/logoIcon.png" alt="">
            </div>
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

        <div id="newsCover">
        <h1>News</h1>
        <div class="logoHRWhite">
                <img  src="./photos/logoIcon.png" alt="">
        </div>
        <div id="feed">
                
     <?php 

$query = "SELECT * FROM story";
$select_feed = mysqli_query($connectionFeed, $query);


while($row = mysqli_fetch_assoc($select_feed)) {

    $story_title = $row['story_title'];
    $story_date = $row['story_date'];
    $story_content = $row['story_content'];

    if (strlen($story_content) > 400) {
        
        // echo "longer";

    } else {

        // echo "cool";

    }

    $burner = "<div class='newsDiv'><h2>{$story_title}</h2><p class='dateSpan'>{$story_date}</p><p>{$story_content}</p></div>";

    echo $burner;
}
?> 

</div>
        </div>


        <div class="selection">
            <div class="col-lg-12">
                <h1>Proizvodi</h1>
                <div class="logoHR">
                    <img  src="./photos/logoIcon.png" alt="">
                </div>  
            </div>

            <div class="row" id="mainProducts">

<?php 

        $query = "SELECT * FROM main_group";
        $select_all_main_groups = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_all_main_groups)) {

            $main_name = $row['main_name'];
            $main_id = $row['main_id'];

            $writer = "<div class='Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12'><img src='./photos/slike/legos.jpg' alt='Card image cap'><div class='middle'><a class='text' href='./pages/products.php?main_id={$main_id}'>$main_name</a>
            </div></div>";
                        
            echo $writer;  

        }
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