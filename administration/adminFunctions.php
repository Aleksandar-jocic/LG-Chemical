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
if (isset($_POST['deleteSth'])) {
    $id = $_POST['deleteSth'];
    deleteEntry($id);
}
function deleteEntry ($id) {
    global $testConn;
    if($id) {
        $query = "DELETE FROM people WHERE id=$id";
        $delete = mysqli_query($testConn, $query);
    
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
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {
        $main_name = $row['main_name'];
        $main_id = $row['main_id'];
       
        $writer = "<div class='adminMainGroupList'><a href='./products.php?main_id={$main_id}#productDisplay'  >$main_name</a></div>";
                
        echo $writer;  
    }
}
function getSubProducts () {
    global $connection;
    $query = "SELECT * FROM sub_group";
    $select_all_main_groups = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {
        $sub_name = $row['sub_name'];
        $sub_id = $row['sub_id'];
       
        $writer = "<div class='adminSubGroupList'>$sub_id $sub_name</div>";
                
        echo $writer;  
    }
}
function getProducts () {
    global $connection;
    $query = "SELECT * FROM product";
    $select_all_main_groups = mysqli_query($connection, $query);
    while($row = mysqli_fetch_assoc($select_all_main_groups)) {
        $product_name = $row['product_name'];
        $product_id = $row['product_id'];
       
        $writer = "<div class='adminProductList'>$product_name $product_id</div>";
                
        echo $writer;  
    }
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