<?php include "../productDB/serverConnection.php"; ?>

<?php


if(isset($_POST['getAllNews'])) {

    storyTellerAll();

} else {

storyTeller();
};

function storyTeller () {

    global $connectionFeed;

    $query = "SELECT * FROM story";

    $select_feed = mysqli_query($connectionFeed, $query);
    $num_of_rows = mysqli_num_rows($select_feed);

    while($row = mysqli_fetch_assoc($select_feed)) {

        $story_id = $row['story_id'];
        $story_title = $row['story_title'];
        $story_date = $row['story_date'];
        $story_content = $row['story_content'];
        $story_cover = $row['story_cover'];
?>
        <div class='col-12 col-sm-6 newsDiv'>
            <h2><?php echo $story_title; ?></h2>
            <p class='dateSpan'><?php echo $story_date; ?></p><i id='story_<?php echo $story_id; ?>' data-toggle='modal' data-target='#exampleModalLong' class='fas fa-expand readMore'></i>
            <div class='feedCover' style="background-image: url('./photos/feedImg/<?php echo $story_cover; ?>')">
            </div>
            <p class='storyContent'><?php echo $story_content; ?></p>
        </div>

<?php
    }  
    if($num_of_rows > 4) {

        echo "<div class='col-12'><span class='getAllNews'>Prikaži još</span></div>";
    } 
}
?>