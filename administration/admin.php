<?php
   
   



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

    

<?php 
        $admin = false;
        $serverName = "localhost";
        $userName = "root";
        $password = "";
        $dbname = "admins";
        $connection = mysqli_connect($serverName, $userName, $password, $dbname);

    if(isset($_POST['submit'])) {

    $userName = $_POST["username"];
    $password = $_POST["password"];

    $userName = mysqli_real_escape_string($connection, $userName);
    $password = mysqli_real_escape_string($connection, $password);

    $query = "SELECT * FROM adminlist";

    $getAdmin = mysqli_query($connection, $query);
    
    if(!$getAdmin) {

        die("fail");

    } 
    while($row = mysqli_fetch_array($getAdmin)) {

        $adminUser = $row['username'];
        $adminPass = $row['password'];
    }
    if ($userName === $adminUser && $password === $adminPass) {

        $admin = true;

    } else {

        echo "wrong password";
    }
}
if (!$admin) {
?>
        <form method="POST" action="admin.php"><br>
        Username: <input type="text" name="username"><br><br><br>
        Password: <input type="password" name="password"><br><br>
        <input type="submit" name="submit" value="submit">
<?php

    } else {
?>
    <h1>LG-Chemical Administration panel</h1>

<div>

<div>Proizvodi</div>
<div>Aktuelnosti</div>
<div>P</div>

</div>



    <!-- products panel

        -main group

            ===add
            ===edit
            ===remove

        -sub group

            ===add
            ===edit
            ===remove

        -products group

            ===add
            ===edit
            ===remove

    news panel

        -feed list
        
            ==add
            ===edit
            ===remove

    admin side panel

        -change admin credentials  -->

<?php        
    }
?>
 
    
</body>
</html>