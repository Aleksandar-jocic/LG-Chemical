<?php 
    error_reporting(E_ALL & ~E_WARNING);
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'products';
    
    $connection = mysqli_connect($server, $username, $password, $database);
    mysqli_query($connection, "SET NAMES utf8");
?>

<?php 
    // error_reporting(E_ALL & ~E_WARNING);
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'feed';

    $connectionFeed = mysqli_connect($server, $username, $password, $database);
    mysqli_query($connectionFeed, "SET NAMES utf8");
?>