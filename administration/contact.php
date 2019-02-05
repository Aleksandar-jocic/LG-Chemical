<?php include "../productDB/serverConnection.php"; ?>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="shortcut icon" href="../photos/favicon.ico" type="image/x-icon">
	<title>LG Hemija</title>
	<link rel="stylesheet" href="../css/preLoader.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Montserrat|Dancing+Script|Caveat" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	 crossorigin="anonymous">
</head>

<body>
<?php 
if(isset($_POST['submit'])){

    global $connection;

    $to = "aleksandar.7jocic@gmail.com"; 

    $client_email = $_POST['email']; 
    $client_email = filter_var($client_email, FILTER_SANITIZE_EMAIL);

    $client_name = $_POST['first_name'];
    $client_name = filter_var($client_name, FILTER_SANITIZE_STRING);
    // $client_name = mysqli_real_escape_string($connection, $client_name);

    $message_content = $_POST['message'];
    $message_content = filter_var($message_content, FILTER_SANITIZE_STRING);
    // $message_content = mysqli_real_escape_string($connection, $message_content);

    $subject = "Form submission";

    $message = $client_name . " " . " wrote the following:" . "\n\n" . $message_content;

    $headers = "From:" . $client_email;
    
    mail($to,$subject,$message,$headers);

    ?>
        <div class="loginCoverSet">
            <div class="loginCover">
                <div class="loginContent">
                    <div class="header ">
                        <h2>Hvala na upitu!</h2>
                    </div>
                    <div class="logBody queryBody">
                        <p>Kontaktiraćemo Vas uskoro preko email-a: <?php echo $client_email; ?></p>
                    </div>
                    <div class="footerLog queryBody">
                        <a href="../pages/contact.html">
                            <i class="fas fa-chevron-left"></i> Idi nazad</a>
                    </div>
                </div>
            </div>
        </div>
<?php
    }
?>
	<script src="../javascript/preLoader.js"></script>
	<script src="../javascript/effects.js"></script>
</body>
</html>