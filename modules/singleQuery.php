<?php include "../productDB/serverConnection.php"; ?>

<?php
if(isset($_POST['singleStoryInfoWithId'])) {

getStoryWitId($_POST['singleStoryInfoWithId']);
// exit();
};

function getStoryWitId ($id) {

    global $connection;

    $query = "SELECT story_title, story_date, story_content, story_cover FROM story WHERE story_id={$id} LIMIT 1";

    $result = mysqli_query($connection, $query);

    $row = mysqli_fetch_assoc($result);
    
    $story_title = $row['story_title'];
    $story_content = $row['story_content'];
    $story_date = $row['story_date'];
    $story_cover = $row['story_cover'];

?>
    <div class="modalSingleStory">
        <h2><?php echo $story_title; ?></h2>
        <p class='dateSpan'><?php echo $story_date; ?></p>
        <div class='feedCover' style="background-image: url('./photos/feedImg/<?php echo $story_cover; ?>')">
        </div>
        <p class='storyContent'><?php echo $story_content; ?></p>
    </div>
<?php
}
if(isset($_POST['singleProductInfoWithId'])) {

    getProductWitId($_POST['singleProductInfoWithId']);
    // exit();
};
function getProductWitId($id) {

    global $connection;

    $query = "SELECT product_name, product_picture, product_description FROM product WHERE product_id={$id} LIMIT 1";
    $result = mysqli_query($connection, $query);
    $row = mysqli_fetch_assoc($result);
 
    $product_name = $row['product_name'];
    $product_picture = $row['product_picture'];
    $product_description = $row['product_description'];

?>
    <div class="modalSingleProduct">
        <div>
            <h2><?php echo $product_name; ?></h2>
            <img src='../photos/productImg/<?php echo $product_picture; ?>'>
        </div>
        <p class='productDescriptionContent'><?php echo $product_description; ?>
        </p>
    </div>
<?php
}
?>