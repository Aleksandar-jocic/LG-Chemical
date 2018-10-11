<?php
   
   $serverName = "localhost";
   $userName = "root";
   $password = "";
   $dbname = "admins";


    $connection = mysqli_connect($serverName, $userName, $password, $dbname);

    $query = 'SELECT * FROM adminlist';
    $result = mysqli_query($connection, $query);



?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body>

    <form method="POST" action="admin.php"><br>
        Username: <input type="text" name="username"><br><br><br>
        Password: <input type="password" name="password"><br><br>
        <input type="submit" name="submit" value="submit">
    </form>

    <?php 
    
    
    
    ?>
 
    
    <!-- <script src="main.js"></script> -->
</body>
</html>