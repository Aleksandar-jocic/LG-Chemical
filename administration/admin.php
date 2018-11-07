<?php include "../productDB/serverConnection.php"; ?>
<?php include "./adminFunctions.php"; ?>


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
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="header">
	<h2>Home Page</h2>
</div>
<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="admin.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
</div>

<div>

	<div class="adminMainSelect"><a href="./admin.php?ext=products">Products</a></div>
	<div class="adminMainSelect"><a href="./admin.php?ext=news">News</a></div>
	<div class="adminMainSelect"><a href="./admin.php?ext=partners">Partners</a></div>

</div>

	<?php 
	
	if(isset($_GET['ext'])) {

		$ext = $_GET['ext'];

		if($ext === 'products') {

	?>
			<div>
				<div><a href="./admin.php?ext=products&selected=main_group">Main groups</a></div>
				<div><a href="./admin.php?ext=products&selected=sub_group">sub groups</a></div>
				<div><a href="./admin.php?ext=products&selected=product">Products</a></div>
			</div>

	<?php		
		} else if ($ext === 'news') {

			getNews();

		} else if ($ext === 'partners') {

			getPartners();
		}
	}

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

	<div>
	<?php 
	
	testdb();
	
	
	?>
	
	
	</div>
		<script src="./admin.js"></script>
</body>
</html>