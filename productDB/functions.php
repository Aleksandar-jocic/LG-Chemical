<?php include "serverConnection.php"; ?>

<?php 

function getAllMain () {

    global $connection;

    $query = "SELECT * FROM main_group";

        $select_all_main_groups = mysqli_query($connection, $query);

        while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $main_name = $row['main_name'];
        $main_id = $row['main_id'];

        $writer = "<div class='mainList'><a  href='./products.php?main_id={$main_id}'>$main_name</a></div>";
                        
        echo $writer;  
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

        $burner = "<div class='subGroups'><a href='./products.php?main_id={$mainID}&sub_id={$sub_id}'>{$sub_name}</a></div>";

        echo $burner;
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

        $burner = "<div><a href='./products.php?pid={$product_id}'>{$product_name}</a><br></div>";

        echo $burner;
    }
} 

?>