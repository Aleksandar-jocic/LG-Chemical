<?php 
  session_start(); 
  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<?php include "../productDB/serverConnection.php"; ?>
<?php include "./adminFunctions.php"; ?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LG hemija</title>
    <link rel="stylesheet" href="../css/preLoader.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Montserrat|Sunflower:300" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
        crossorigin="anonymous">

</head>
<body>

<div class="adminHead">
    <h2>Admin Page</h2>
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="admin.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
</div>
<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
    
</div>

<div class="adminMain">

	<div class="adminMainSelect"><a href="./admin.php?ext=products&selected=main_group">Products</a></div>
	<div class="adminMainSelect"><a href="./admin.php?ext=news">News</a></div>
	<div class="adminMainSelect"><a href="./admin.php?ext=partners">Partners</a></div>

</div>

	<?php 
	
	if(isset($_GET['ext'])) {
		$ext = $_GET['ext'];
		if($ext === 'products') {
	?>
			<div class="productsSelected">
				<div>
					<a href="./admin.php?ext=products&selected=main_group">Main groups</a>
				
					<i class="fas fa-plus addNew" data-toggle="modal" data-target="#modalAddMain"></i>
				
				</div>
				<div>
					<a href="./admin.php?ext=products&selected=sub_group">Sub groups</a>
				
					<i class="fas fa-plus addNew" data-toggle="modal" data-target="#modalAddSub"></i>
				
				</div>
				<div>
					<a href="./admin.php?ext=products&selected=product">Products</a>
				
					<i class="fas fa-plus addNew" data-toggle="modal" data-target="#modalAddProduct"></i>
				
				</div>
			</div>

	<?php		
		} else if ($ext === 'news') {
			getNews();
		} else if ($ext === 'partners') {
			getPartners();
		}
    }
    ?>
        <div class="adminOutput">
			
<?php
	if(isset($_GET['selected'])) {
        $selected = $_GET['selected'];
        
		if($selected === 'main_group') {
			getMainProducts();
		} else if ($selected === 'sub_group') {
			getSubProducts();
		} else {
			getProducts();
		}
	}
?>
		</div>
		<?php include "./adminModal.php"; ?>
		<script src="./admin.js"></script>
</body>
</html>