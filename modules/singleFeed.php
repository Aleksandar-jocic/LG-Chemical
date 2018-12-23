<?php include "../productDB/serverConnection.php"; ?>

<?php
if(isset($_POST['singleStoryInfoWithId'])) {

getStoryWitId($_POST['singleStoryInfoWithId']);
// exit();
};

function getStoryWitId ($id) {

    global $connectionFeed;

    $query = "SELECT story_title, story_date, story_content, story_cover FROM story WHERE story_id={$id} LIMIT 1";

    $result = mysqli_query($connectionFeed, $query);

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