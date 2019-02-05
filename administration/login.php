<?php ob_start(); ?>
<html lang="en">

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
	<?php include('adminServer.php') ?>

	<div class="loginCoverSet">

		<div class="loginCover">
			<div class="loginContent">
				<div class="header">
					<h2>Login</h2>
				</div>

				<form method="post" action="login.php">
					<div class="errorLogin">
						<?php include('errors.php'); ?>
					</div>
					<div class="logBody">
						<div class="labelLog">
							<label>Username</label>
							<label>Password</label>
						</div>
						<div class="inputLog">
							<input type="text" name="username">
							<input type="password" name="password">
						</div>
					</div>
					<div class="footerLog">
						<button type="submit" class="btn" name="login_user">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>