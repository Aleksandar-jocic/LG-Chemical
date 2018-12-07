<?php include "../productDB/serverConnection.php"; ?>

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

    echo "Mail Sent. Thank you " . $client_name . ", we will contact you shortly. " . $client_email . "<br>" . $message_content;
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    }
?>