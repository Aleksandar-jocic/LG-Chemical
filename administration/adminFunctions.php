<?php include "../productDB/serverConnection.php"; ?>

<?php 
$connectionAdmin = mysqli_connect('localhost', 'root', '', 'admins');
mysqli_query($connectionAdmin, "SET NAMES utf8");


function testdb () {
    global $testConn;
    $query = "SELECT * FROM people";
    $selectPeople = mysqli_query($testConn, $query);
    while($row = mysqli_fetch_assoc($selectPeople)) {
        $firstName = $row['firstName'];
        $lastName = $row['lastName'];
        $id = $row['id'];
        
        $writer = "<div>$firstName $lastName $id <span class='changeMe' id='cha_$id'>change </span><span class='deleteMe' id='del_$id'>Delete</span></div>";
                
        echo $writer;  
    }
}
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

if(isset($_POST['changeSth'])) {
    $id = $_POST['changeSth'];
    $newName = $_POST['newName'];
    $newLastName = $_POST['newLastName'];
    changeEntry($id, $newName, $newLastName);
}
function changeEntry ($id, $newName, $newLastName) {
    global $testConn;
    if($newName) {
        $query = "UPDATE people SET firstName='$newName', lastName='$newLastName' WHERE id=$id";
        mysqli_query($testConn, $query);
        echo 1;
    } else {
        echo 0;
    }
}
if (isset($_POST['uploadPerson'])) {
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    insertEntry ($firstName, $lastName);
}
function insertEntry ($firstName, $lastName) {
    global $testConn;
    $query = "INSERT INTO people (firstName, lastName) VALUES ('$firstName', '$lastName')";
    mysqli_query($testConn, $query);
    header('location: admin.php');
}



//              PRODUCTS               //
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
            <td class='tableOptions edit'>Edit</td>


            <td id='deleteSub_<?php echo $sub_id; ?>' class='tableOptions delete'><button rel='<?php echo $sub_id; ?>' type="button" class='deleteSub' data-toggle="modal" data-target="#modalSub">Delete</button>
            </td>
        </tr>       
<?php
    }
    echo "</table>";
}
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

            <td class='tableOptions edit'>Edit</td>
            <td id='delete_<?php echo $sub_id; ?>' class='tableOptions delete'><button rel='<?php echo $sub_id; ?>' type="button" class='deleteSub' data-toggle="modal" data-target="#modalSub">Delete</button>
            </td>
        </tr>       
 <?php     
    }
    echo "</table>";
}






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