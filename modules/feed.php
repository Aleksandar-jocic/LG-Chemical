<?php include "../productDB/serverConnection.php"; ?>

<?php

if(isset($_POST['getAllNews'])) {

    storyTellerAll();
} else {

storyTeller();
}

function storyTeller () {

    global $connectionFeed;

    $query = "SELECT * FROM story LIMIT 4";
    $queryAll = "SELECT * FROM story";

    $select_feed_4 = mysqli_query($connectionFeed, $query);
    $select_feed_all = mysqli_query($connectionFeed, $queryAll);

    $num_of_rows = mysqli_num_rows($select_feed_all);

    while($row = mysqli_fetch_assoc($select_feed_4)) {

        $story_title = $row['story_title'];
        $story_date = $row['story_date'];
        $story_content = $row['story_content'];
        $story_cover = $row['story_cover'];

?>
        <div class='col-12 col-sm-6 newsDiv'>
            <h2><?php echo $story_title; ?></h2>
            <p class='dateSpan'><?php echo $story_date; ?></p><i class='fas fa-arrow-down readMore'></i>

            <div class='feedCover'>
                <img src='./photos/feedImg/<?php echo $story_cover; ?>'>
            </div>
            <p class='storyContent'><?php echo $story_content; ?></p>
        </div>
<?php
    }  
    if($num_of_rows > 4) {

        echo "<div class='col-12'><span class='getAllNews '>Prikaži još</span></div>";
    } 
}

function storyTellerAll () {

    global $connectionFeed;

    $query = "SELECT * FROM story LIMIT 4, 15";
    $select_feed = mysqli_query($connectionFeed, $query);

    while($row = mysqli_fetch_assoc($select_feed)) {

        $story_title = $row['story_title'];
        $story_date = $row['story_date'];
        $story_content = $row['story_content'];
        $story_cover = $row['story_cover'];

?>
        <div class='col-12 col-sm-6 newsDiv'>
            <h2><?php echo $story_title; ?></h2>
            <p class='dateSpan'><?php echo $story_date; ?></p><i class='fas fa-arrow-down readMore'></i>

            <div class='feedCover'>
                <img src='./photos/feedImg/<?php echo $story_cover; ?>'>
            </div>
            <p class='storyContent'><?php echo $story_content; ?></p>
        </div>
<?php
    }  
}
?>