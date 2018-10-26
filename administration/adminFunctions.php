<?php include "serverConnection.php"; ?>

<?php 

function mainGroups () {

    global $connection;

    $query = "SELECT * FROM main_group";

    $getAllMainGroups = mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($getAllMainGroups)) {

    $main_name = $row['main_name'];
    $main_id = $row['main_id'];

} 


?>

<!-- // function getAllMain () {

    global $connection;



            if ($super === $main_id) {

                $active = "<div class='mainList mainListActive'><a onclick=return false  href='./products.php?main_id={$main_id}#productDisplay'>$main_name</a></div>";

                echo $active;
            } else {

                $writer = "<div class='mainList'><a onclick=return false  href='./products.php?main_id={$main_id}#productDisplay'  >$main_name</a></div>";
                        
                echo $writer;  
            }
    }
} -->