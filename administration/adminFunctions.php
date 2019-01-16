<?php include "../productDB/serverConnection.php"; ?>

<?php 
$connectionAdmin = mysqli_connect('localhost', 'root', '', 'admins');
mysqli_query($connectionAdmin, "SET NAMES utf8");


//          ADD MAIN ENTRY            //

if (isset($_POST['addMain'])) {
    
    $mainName = $_POST['mainName'];
    $mainPicture = $_POST['mainPicture'];
    $mainIndexPicture = $_POST['mainIndexPicture'];
    $mainIcon = $_POST['mainIcon'];

    addNewMainEntry($mainName, $mainPicture, $mainIndexPicture, $mainIcon);
}
function addNewMainEntry($mainName, $mainPicture, $mainIndexPicture, $mainIcon) {

    global $connection;
    
    if($mainName) {

        $query = "INSERT INTO main_group (main_name, main_picture, main_index_picture, main_icon) VALUES ('$mainName', '$mainPicture', '$mainIndexPicture', '$mainIcon')";
        mysqli_query($connection, $query);
    

        echo 1;
    } else {
        
        echo 0;
    }
}
//          ADD SUB ENTRY            //


//          ADD PRODUCT ENTRY            //


//          DELETE MAIN ENTRY            //
if (isset($_POST['deleteMain'])) {
    
    deleteMainEntry($_POST['deleteMain']);
}
function deleteMainEntry ($id) {
    global $connection;
    if($id) {
        $query = "DELETE FROM main_group WHERE main_id=$id";
        mysqli_query($connection, $query);
    
        echo 1;
    } else {
        
        echo 0;
    }
}
//          DELETE SUB ENTRY            //
if (isset($_POST['deleteSub'])) {
    
    deleteSubEntry($_POST['deleteSub']);
}
function deleteSubEntry ($id) {
    global $connection;

    if($id) {

        $query = "DELETE FROM sub_group WHERE sub_id=$id";
        mysqli_query($connection, $query);
    
        echo 1;
    } else {
        
        echo 0;
    }
}
//          DELETE PRODUCT ENTRY            //
if (isset($_POST['deleteProduct'])) {
    
    deleteProductEntry($_POST['deleteProduct']);
}
function deleteProductEntry ($id) {
    global $connection;

    if($id) {

        $query = "DELETE FROM product WHERE product_id=$id";
        mysqli_query($connection, $query);
    
        echo 1;
    } else {
        
        echo 0;
    }
}
//          EDIT MAIN ENTRY            //
if (isset($_POST['changeThisMainId'])) {

    $id = $_POST['changeThisMainId'];

    $mainName = $_POST['mainName'];
    $mainPicture = $_POST['mainPicture'];
    $mainIndexPicture = $_POST['mainIndexPicture'];
    $mainIcon = $_POST['mainIcon'];
    

    changeMainBranch($id, $mainName, $mainPicture, $mainIndexPicture, $mainIcon);
}
function changeMainBranch($id, $mainName, $mainPicture, $mainIndexPicture, $mainIcon) {

    global $connection;
    if($id) {

        $query = "UPDATE main_group SET main_name='$mainName', main_picture='$mainPicture', main_index_picture='$mainIndexPicture', main_icon='$mainIcon' WHERE main_id=$id";
        mysqli_query($connection, $query);
        
        echo 1;
    } else {
        echo 0;
    }
}
//          EDIT SUB ENTRY            //

if (isset($_POST['changeThisSubId'])) {

    $id = $_POST['changeThisSubId'];

    $subName = $_POST['subName'];
    $mainId = $_POST['mainId'];

    changeSubBranch($id, $subName, $mainId);
}
function changeSubBranch($id, $subName, $mainId) {

    global $connection;

    if($id) {

        $query = "UPDATE sub_group SET sub_name='$subName', main_id='$mainId' WHERE sub_id=$id";
        mysqli_query($connection, $query);
        
        echo 1;
    } else {
        echo 0;
    }
}
//          EDIT PRODUCT ENTRY            //

if (isset($_POST['changeThisProductId'])) {

    $id = $_POST['changeThisProductId'];

    $mainProductId = $_POST['mainProductId'];
    $subId = $_POST['subId'];
    $productName = $_POST['productName'];
    $productPicture = $_POST['productPicture'];
    $productDescription = $_POST['productDescription'];

    changeProduct($id, $mainProductId, $subId, $productName, $productPicture, $productDescription);
}
function changeProduct($id, $mainProductId, $subId, $productName, $productPicture, $productDescription) {

    global $connection;
    if($id) {

        $query = "UPDATE product SET sub_id='$subId', main_id='$mainProductId', product_name='$productName', product_picture='$productPicture', product_description='$productDescription' WHERE product_id=$id";
        mysqli_query($connection, $query);
        
        echo 1;
    } else {
        echo 0;
    }
}

//              GET ALL MAIN               //
function getMainProducts () {
    global $connection;
    $query = "SELECT * FROM main_group";
    $select_all_main_groups = mysqli_query($connection, $query);
?>
    <table>
        <tr>
            <th>main_id</th>
            <th>main_name</th>
            <th>main_picture</th>
            <th>main_index_picture</th>
            <th>main_icon</th>
            <th colspan="2" class='tableOptions'>options</th>
        </tr>
<?php
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {
        $main_name = $row['main_name'];
        $main_id = $row['main_id'];
        $main_picture = $row['main_picture'];
        $main_index_picture = $row['main_index_picture'];
        $main_icon = $row['main_icon']
?>
        <tr class='adminMainGroupList'>
            <td class='cellId'><?php echo $main_id; ?></td>
            <td><?php echo $main_name; ?></td>
            <td><?php echo $main_picture; ?></td>
            <td><?php echo $main_index_picture; ?></td>
            <td><?php echo $main_icon; ?></td>

            <td id='edit_<?php echo $main_id; ?>' class='tableOptions edit'><button rel='<?php echo $main_id; ?>' type="button" class='editMain' data-toggle="modal" data-target="#modalMainEdit">Edit</button>
            </td>

            <td id='delete_<?php echo $main_id; ?>' class='tableOptions delete'><button rel='<?php echo $main_id; ?>' type="button" class='deleteMain' data-toggle="modal" data-target="#modalMain">Delete</button>
            </td>
        </tr>
<?php                
    }
    echo "</table>";
}
//              GET ALL SUB               //
function getSubProducts () {
    global $connection;
    $query = "SELECT * FROM sub_group";
    $select_all_main_groups = mysqli_query($connection, $query);

?>
    <table>
        <tr>
            <th>main_id</th>
            <th>sub_id</th>
            <th>sub_name</th>
            <th colspan="2" class='tableOptions'>options</th>
        </tr>

<?php
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $main_id = $row['main_id'];
        $sub_id = $row['sub_id'];
        $sub_name = $row['sub_name'];
?>
       <tr class='adminSubGroupList'>
            <td class='cellId'><?php echo $main_id; ?></td>
            <td class='cellId'><?php echo $sub_id; ?></td>
            <td><?php echo $sub_name; ?></td>

            <td id='editSub_<?php echo $sub_id; ?>' class='tableOptions edit'><button rel='<?php echo $sub_id; ?>' type="button" class='editSub' data-toggle="modal" data-target="#modalSubEdit">Edit</button>
            </td>

            <td id='deleteSub_<?php echo $sub_id; ?>' class='tableOptions delete'><button rel='<?php echo $sub_id; ?>' type="button" class='deleteSub' data-toggle="modal" data-target="#modalSub">Delete</button>
            </td>
        </tr>       
<?php
    }
    echo "</table>";
}
//              GET ALL PRODUCTS               //
function getProducts () {
    global $connection;
    $query = "SELECT * FROM product";
    $select_all_main_groups = mysqli_query($connection, $query);
?>
    <table>
        <tr>
            <th>main_id</th>
            <th>sub_id</th>
            <th>product_id</th>
            <th>product_name</th>
            <th>product_picture</th>
            <th>product_description</th>
            <th colspan="2" class='tableOptions'>options</th>
        </tr>
<?php
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {

        $product_main_id = $row['main_id'];
        $product_sub_id = $row['sub_id'];
        $product_id = $row['product_id'];
        $product_name = $row['product_name'];
        $product_picture = $row['product_picture'];
        $product_description = $row['product_description'];
        $product_description = substr($product_description,0, 50);
        
?>
        <tr class='adminProductList'>
            <td class='cellId'><?php echo $product_main_id; ?></td>
            <td class='cellId'><?php echo $product_sub_id; ?></td>
            <td class='cellId'><?php echo $product_id; ?></td>
            <td><?php echo $product_name; ?></td>
            <td><?php echo $product_picture; ?></td>
            <td><?php echo $product_description; ?></td>

            <td id='editProduct_<?php echo $product_id; ?>' class='tableOptions edit'><button rel='<?php echo $product_id; ?>' type="button" class='editProduct' data-toggle="modal" data-target="#modalProductEdit">Edit</button>
            </td>

            <td id='deleteProduct_<?php echo $product_id; ?>' class='tableOptions delete'><button rel='<?php echo $product_id; ?>' type="button" class='deleteProduct' data-toggle="modal" data-target="#modalProduct">Delete</button>
            </td>
        </tr>       
 <?php     
    }
    echo "</table>";
}




//              GET ALL NEWS               //

function getNews () {
    global $connectionFeed;
    $query = "SELECT * FROM story";
    $select_all_main_groups = mysqli_query($connectionFeed, $query);
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {
        $story_title = $row['story_title'];
        $story_id = $row['story_id'];
       
        $writer = "<div class='mainList'><a href='./products.php?main_id={$story_title}#productDisplay'  >$story_id</a></div>";
                
        echo $writer;  
    }
}
// function getPartners () {
//     global $connectionPartners;
//     $query = "SELECT * FROM story";
//     $select_all_main_groups = mysqli_query($connectionFeed, $query);
//     while($row = mysqli_fetch_assoc($select_all_main_groups)) {
//         $story_title = $row['story_title'];
//         $story_id = $row['story_id'];
       
//         $writer = "<div class='mainList'><a href='./products.php?main_id={$story_title}#productDisplay'  >$story_id</a></div>";
                
//         echo $writer;  
//     }
// }
?>