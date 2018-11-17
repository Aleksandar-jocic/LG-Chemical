<?php include "serverConnection.php"; ?>

<?php 

//mainContainer
function getAllMain () {

    global $connection;

    $query = "SELECT * FROM main_group";

        $select_all_main_groups = mysqli_query($connection, $query);


        while($row = mysqli_fetch_assoc($select_all_main_groups)) {
            $super = $_GET['main_id'];
            $main_name = $row['main_name'];
            $main_id = $row['main_id'];
            $main_picture = $row['main_picture'];

                if ($super === $main_id) {
                    $active = "<div class='mainList mainListActive'><a name='$main_picture' onclick=getBackground() href='./products.php?main_id={$main_id}#productDisplay'>$main_name</a></div>";
                    echo $active;
                } else {
                    $writer = "<div class='mainList'><a name='$main_picture' onclick=getBackground() href='./products.php?main_id={$main_id}#productDisplay'  >$main_name</a></div>";
                            
                    echo $writer;  
                }
        }
}
    


//output

//subProductDiv
function getSubGroupsWithMainID ($mainID) {

    global $connection;

    $query = "SELECT * FROM sub_group WHERE main_id={$mainID}";

    $select_all_sub_groups = mysqli_query($connection, $query);
    // $getClass = mysqli_fetch_assoc($select_all_sub_groups);

    // $output = 

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

        if(strlen($product_description) > 160) {

            $burner = "<div class='singleProduct' id='{$product_id}'><div class='productName'><p>{$product_name} <i class='fas fa-arrow-down readMore'></i></p></div><div class='productDescription'><p>{$product_description}</p></i></div><div class='productPicture'><img src='../photos/{$product_picture}'></div></div>";

             echo $burner;
            
        } else {

            $burner = "<div class='singleProduct' id='{$product_id}'><div class='productName'><p>{$product_name}</p></div><div class='productDescription'><p>{$product_description}</p></div><div class='productPicture'><img src='../photos/{$product_picture}'></div></div>";

            echo $burner;
        }
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
