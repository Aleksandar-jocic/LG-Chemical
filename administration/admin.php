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
    	<!-- <p> <a href="admin.php?logout='1'" style="color: red;">logout</a> </p> -->
    <?php endif ?>
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
				<div><a href="./admin.php?ext=products&selected=main_group">Main groups</a></div>
				<div><a href="./admin.php?ext=products&selected=sub_group">Sub groups</a></div>
				<div><a href="./admin.php?ext=products&selected=product">Products</a></div>
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

	<div>
	<?php 
	
	testdb();
	
	
	?>
	<!-- Modal -->
<div class="modal fade" id="modalMain" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this product?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary deleteMainConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Modal -->
<div class="modal fade" id="modalSub" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this product?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary deleteSubConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Edit Modal -->
	<div class="modal fade" id="modalMainEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
				<form method="post" action="adminFunctions.php">
			  
					<label for="main_name">main_name: </label>
					<input id="main_name" type="text"><br>

					<label for="main_picture">main_picture: </label>
					<input id="main_picture" type="text"><br>

					<label for="main_index_picture">main_index_picture: </label>
					<input id="main_index_picture" type="text"><br>

					<label for="main_icon">main_icon: </label>
					<input id="main_icon" type="text">
				</form>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary editMainModal" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- <form method="post" action="adminFunctions.php">
		<div class="input-group">
			<label>first name</label>
			<input type="text" name="firstName" >
		</div>
		<div class="input-group">
			<label>last name</label>
			<input type="text" name="lastName">
		</div>
		<div class="input-group">
			<button type="submit" class="btn uploadPerson" name="uploadPerson">enter</button>
		</div>
  	</form> -->

	<div class="update" style="display:none">
		<form method="post" action="adminFunctions.php">
			<div class="input-group">
				<label>new name</label>
				<input class='newNameInput' type="text" name="newName" >
			</div>
			<div class="input-group">
				<label>new last name</label>
				<input class='newLastNameInput' type="text" name="newLastName">
			</div>
			<div class="input-group">
				<button type="button" class="btn changePerson" name="changePerson">change</button>
			</div>
		</form>
	</div>
	
	</div>
		<script src="./admin.js"></script>
</body>
</html>