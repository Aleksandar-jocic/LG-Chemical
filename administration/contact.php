<?php 
if(isset($_POST['submit'])){

        // this is your Email address
    $to = "aleksandar.7jocic@gmail.com"; 
        // this is the sender's Email address
    $from = $_POST['email']; 

    $first_name = $_POST['first_name'];
    $subject = "Form submission";

    $message = $first_name . " " . " wrote the following:" . "\n\n" . $_POST['message'];

    $headers = "From:" . $from;
    
    mail($to,$subject,$message,$headers);

    echo "Mail Sent. Thank you " . $first_name . ", we will contact you shortly.";
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    }
?>