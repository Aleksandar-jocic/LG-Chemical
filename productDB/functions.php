<?php include "serverConnection.php"; ?>
<?php 
function getAllMainForHeader() {

    global $connection;

    $query = "SELECT * FROM main_group";
    $select_all_main_groups = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $main_name = $row['main_name'];
        $main_id = $row['main_id'];
        $main_icon = $row['main_icon'];
?>

        <li class='productList'>
            <div class='mainIconDiv'>
                <img src="./photos/icons/<?php echo $main_icon; ?>">
            </div>
            <div class='mainLinkDiv'>
                <a href='./pages/products.php?main_id=<?php echo $main_id; ?>'><?php echo $main_name; ?></a>
            </div>
        </li>
<?php
    }
}
function getAllMainForHeaderPages() {

    global $connection;

    $query = "SELECT * FROM main_group";
    $select_all_main_groups = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $main_name = $row['main_name'];
        $main_id = $row['main_id'];
        $main_icon = $row['main_icon'];
?>

        <li class='productList'>
            <div class='mainIconDiv'>
                <img src="../photos/icons/<?php echo $main_icon; ?>">
            </div>
            <div class='mainLinkDiv'>
                <a href='./products.php?main_id=<?php echo $main_id; ?>'><?php echo $main_name; ?></a>
            </div>
        </li>
<?php
    }
}
function getAllMainForIndexProducts () {

    global $connection;
    
    $query = "SELECT * FROM main_group";
    $select_all_main_groups = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $main_name = $row['main_name'];
        $main_id = $row['main_id'];
        $main_index_picture = $row['main_index_picture'];
?>

    <div class="Item col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12">
        <div class="tester1" style="background-image: url('./photos/chemeter/chemeterIndex/<?php echo $main_index_picture; ?>')">
        </div>
        <div class="middle">
            <a class="text" href="./pages/products.php?main_id=<?php echo $main_id; ?>"><?php echo $main_name; ?></a>
        </div>
    </div>

<?php
    }
}

//mainContainer
function getAllMain () {

    global $connection;

    $query = "SELECT * FROM main_group";

        $select_all_main_groups = mysqli_query($connection, $query);
        $row_num = mysqli_num_rows($select_all_main_groups);

        while($row = mysqli_fetch_assoc($select_all_main_groups)) {
            $super = $_GET['main_id'];
            $main_name = $row['main_name'];
            $main_id = $row['main_id'];
            $main_picture = $row['main_picture'];

                if ($super === $main_id) {


?>
                <div class='mainList mainListActive' style="width: <?php echo 100/$row_num; ?>%">
                    <a name='<?php echo $main_picture ?>' href='./products.php?main_id=<?php echo $main_id; ?>#productDisplay'><?php echo $main_name ?>
                    </a>
                </div>
<?php
                } else {
?>
                    <div class='mainList' style="width: <?php echo 100/$row_num; ?>%">
                        <a name='<?php echo $main_picture ?>' href='./products.php?main_id=<?php echo $main_id; ?>#productDisplay'><?php echo $main_name ?>
                        </a>
                    </div>
<?php
                }
        }
}
    


//output

//subProductDiv
function getSubGroupsWithMainID ($mainID) {

    global $connection;

    $query = "SELECT * FROM sub_group WHERE main_id={$mainID}";

    $select_all_sub_groups = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_all_sub_groups)) {

        $sub_name = $row['sub_name'];
        $sub_id = $row['sub_id'];

        if (isset($_GET['sub_id'])) {

                $super = $_GET['sub_id'];

            if ($super === $sub_id) {

                $active = "<div class='subGroups subGroupsActive'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}&page=1#productDisplay'>{$sub_name}</a></div>";
        
                echo $active;
        
            } else {
        
                $burner = "<div class='subGroups'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}&page=1#productDisplay'>{$sub_name}</a></div>";
                            
                echo $burner;  
            }
        }
        else {
            $burner = "<div class='subGroups'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}&page=1#productDisplay'>{$sub_name}</a></div>";

            echo $burner;  
        }
    }
} 

function getChemeter () {

    $write = "<div class='chemeterExclusion'><img src='../photos/chemeter/SiamSRP-2.jpg'><img src='../photos/chemeter/SiamSRP-3.jpg'><img src='../photos/chemeter/SiamSRP-4.jpg'><img src='../photos/chemeter/SiamSRP-5.jpg'><img src='../photos/chemeter/SiamSRP-6.jpg'></div>";

    echo $write;
}

//productListDiv

function getProducts ($subID) {

    global $connection;

    $results_per_page = 10;

    $query = "SELECT * FROM product WHERE sub_id={$subID}";
    $select_products = mysqli_query($connection, $query);
    $number_of_results = mysqli_num_rows($select_products);

    //total number of pages 

    $number_of_pages = ceil($number_of_results/$results_per_page);

    if (!isset($_GET['page'])) {
        $page = 1;
    } else {
        $page = $_GET['page'];
    }

    $paginationPage = $_GET['page'];

    $this_page_first_result = ($page - 1) * $results_per_page;

    $query = "SELECT * FROM product WHERE sub_id={$subID} LIMIT $this_page_first_result , $results_per_page";

    $select_products = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_products)) {

        global $product_main_id;
        
        $product_name = $row['product_name'];
        $product_id = $row['product_id'];
        $product_main_id = $row['main_id'];
        $product_picture = $row['product_picture'];
        $product_description = $row['product_description'];
?>

        <div class='singleProduct' id='<?php echo $product_id ?>'>
            <div class='productName'>
                <p><?php echo $product_name ?></p><i class='fas fa-arrow-down readMore'></i>
            </div>
            <div class='productPicture'>
                <img src='../photos/<?php echo $product_picture ?>'>
            </div>
            <div class='productDescription'>
                <p><?php echo $product_description ?></p>
            </div>
        </div>
<?php     
    }
?>
    <div id='paginator'>
<?php
    $previousPage = $paginationPage - 1;

    $nextPage = $paginationPage + 1;

    if($paginationPage != 1) {

        echo "<div class='paginationPreviousNext'><a href='./products.php?main_id={$product_main_id}&sub_id={$subID}&page={$previousPage}#productDisplay'><i class='fas fa-angle-double-left'></i></a></div>";
    } 

    for ($page = 1; $page <= $number_of_pages; $page++) {

        if(isset($_GET['page'])) {

            $superPage = $_GET['page'];

            if($superPage == $page) {

                echo "<div class='paginationButton pageActive'><a href='./products.php?main_id={$product_main_id}&sub_id={$subID}&page={$page}#productDisplay'>{$page}</a></div>";
            }
            else {

                echo "<div class='paginationButton'><a href='./products.php?main_id={$product_main_id}&sub_id={$subID}&page={$page}#productDisplay'>{$page}</a></div>";
            }
        }
        else {

            echo "<div class='paginationButton'><a href='./products.php?main_id={$product_main_id}&sub_id={$subID}&page={$page}#productDisplay'>{$page}</a></div>";

        }
    }

    if($paginationPage != $number_of_pages) {

        echo "<div class='paginationPreviousNext'><a href='./products.php?main_id={$product_main_id}&sub_id={$subID}&page={$nextPage}#productDisplay'><i class='fas fa-angle-double-right'></i></a></div>";
    }
} 
?>
    </div>
