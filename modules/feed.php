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
    $select_feed = mysqli_query($connectionFeed, $query);

    while($row = mysqli_fetch_assoc($select_feed)) {

        $story_title = $row['story_title'];
        $story_date = $row['story_date'];
        $story_content = $row['story_content'];
        $story_cover = $row['story_cover'];


        $burner = "<div class='col-12 col-sm-6 newsDiv'><h2>{$story_title}</h2><p class='dateSpan'>{$story_date}</p><i class='fas fa-arrow-down readMore'></i><div class='feedCover'><img src='./photos/feedImg/{$story_cover}'></div><p class='storyContent'>{$story_content}</p></div>";


        echo $burner;
    }  
echo "<span class='getAllNews'>Prikaži još</span>";
// echo "";

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

        $burner = "<div class='col-12 col-sm-6 newsDiv'><h2>{$story_title}</h2><p class='dateSpan'>{$story_date}</p><i class='fas fa-arrow-down readMore'></i><div class='feedCover'><img src='./photos/feedImg/{$story_cover}'></div><p class='storyContent'>{$story_content}</p></div>";

        echo $burner;
    }  
}
?>