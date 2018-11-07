<?php 
    error_reporting(E_ALL & ~E_WARNING);
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'products';
    
    $connection = mysqli_connect($server, $username, $password, $database);
    mysqli_query($connection, "SET NAMES utf8");

    // error_reporting(E_ALL & ~E_WARNING);
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'feed';

    $connectionFeed = mysqli_connect($server, $username, $password, $database);
    mysqli_query($connection, "SET NAMES utf8");

    // error_reporting(E_ALL & ~E_WARNING);
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'partners';

    $connectionPartners = mysqli_connect($server, $username, $password, $database);
    mysqli_query($connection, "SET NAMES utf8");


    //test db with test conn
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'testdb';

    $testConn = mysqli_connect($server, $username, $password, $database);
    mysqli_query($testConn, "SET NAMES utf8");
?>