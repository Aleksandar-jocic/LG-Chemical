<?php include "./modules/head.php" ?>
<?php include "./productDB/serverConnection.php" ?>
<?php include "./productDB/functions.php"; ?>
<?php include "./modules/modal.php" ?>

<body>


	<div class="container-fluid">
		<div class="loader">
			<img src="./photos/preLoad.gif" alt="">
		</div>
		<!-- CAROUSEL -->

		<div class="imageContainer">
			<?php include "./modules/carousel.php" ?>
		</div>

		<!-- NAVBAR -->

		<div class="overlay">
			<div id="text">
				<div>
					<a href="./index.php">
						<img src="./photos/logoIcon.png">
						<img class="logoText" src="./photos/logotext.png" alt="">
					</a>
				</div>

				<div class="options">
					<a href="./index.php">Početna</a>
					<a href="./pages/about.php">O nama</a>
					<a href="#!" class="productTrigger">Katalog Proizvoda</a>

					<div class='catalogue'>
						<ul>
							<?php 
getAllMainForHeader();
?>
						</ul>
					</div>

					<a href="./pages/partners.php">Partneri</a>
					<a href="./pages/contact.html">Kontakt</a>
				</div>
				<i class="fa fa-bars" id="target"></i>
			</div>
		</div>

		<!-- SEARCH BAR -->
		<div class="searchOutputCover">
            <h2 class="searchResults"></h2>
            <div class="loaderSmall">
			    <img src="./photos/preLoad.gif" alt="">
		    </div>
			<div class="searchOutput">
			</div>
		</div>


		<!-- ABOUT -->

		<div class="mainSection">
			<h4 id='breaker'>Proizvodi hemijske industrije</h4>

			<p>LG HEMIJA D.O.O. je deo grupacije LOUFAKIS CHEMICALS SA., koja se bavi distribucijom hemijskih proizvoda namenjenih industriji:
				</p>
			<ul>
				<li>
					<i class="fas fa-chevron-circle-right"></i> materijala za završne radove u građevinarstvu, </li>
				<li>
					<i class="fas fa-chevron-circle-right"></i> prehrane</li>
				<li>
					<i class="fas fa-chevron-circle-right"></i> tekstila i kože, </li>
				<li>
					<i class="fas fa-chevron-circle-right"></i> deterdženata i kućne hemije</li>
			</ul>
		</div>

		<!-- NEWS AREA -->

		<div id="newsCover">
			<h1>Aktuelnosti</h1>
			<div id="feed" class="row">

				<?php include "./modules/feed.php"; ?>

				<div class='getBasicNews'>
					<span id='spanTarget'>Prikaži manje</span>
				</div>
			</div>
		</div>

		<!-- PRODUCTS AREA -->

		<div class="selection">
			<div class="col-lg-12">
				<h1>Proizvodi</h1>
			</div>

			<div class="row" id="mainProducts">
				<?php 
getAllMainForIndexProducts();
?>

			</div>
		</div>

		<!-- FOOTER -->
		<?php include "./modules/footer.php" ?>

	</div>
	<script src="./javascript/preLoader.js"></script>
	<script src="./javascript/clamp.js"></script>
	<script src="./javascript/effects.js"></script>

</body>

</html>