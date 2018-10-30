<?php include "serverConnection.php"; ?>

<?php 


function getAllMain () {

    global $connection;

    $width = 

    $query = "SELECT * FROM main_group";

        $select_all_main_groups = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_all_main_groups)) {
            $super = $_GET['main_id'];
            $main_name = $row['main_name'];
            $main_id = $row['main_id'];
                if ($super === $main_id) {
                    $active = "<div class='mainList mainListActive'><a onclick=return false href='./products.php?main_id={$main_id}#productDisplay'>$main_name</a></div>";
                    echo $active;
                } else {
                    $writer = "<div class='mainList'><a onclick=return false  href='./products.php?main_id={$main_id}#productDisplay'  >$main_name</a></div>";
                            
                    echo $writer;  
                }
        }
    }
    


//keep the scroll position


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

                $active = "<div class='subGroups subGroupsActive'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}#productDisplay'>{$sub_name}</a></div>";
        
                echo $active;
        
            } else {
        
                $burner = "<div class='subGroups'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}#productDisplay'>{$sub_name}</a></div>";
                            
                echo $burner;  
            }
        }
        else {
            $burner = "<div class='subGroups'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}#productDisplay'>{$sub_name}</a></div>";

            echo $burner;  
        }
    }
} 

function getProducts ($subID) {

    global $connection;

    $query = "SELECT * FROM product WHERE sub_id={$subID}";

    $select_products = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_products)) {

        $product_name = $row['product_name'];
        $product_id = $row['product_id'];
        $product_main_id = $row['main_id'];

        // $product_picture = $row['product_picture'];
        // $product_description = $row['product_description'];

        $burner = "<div><p>{$product_name}</p></div>";

        echo $burner;
    }
} 

?>