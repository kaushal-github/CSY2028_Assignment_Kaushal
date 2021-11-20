<?php session_start(); ?>
<?php //ob_start(); ?>
<?php if (isset($_SESSION['login']) && ($_SESSION['user_role']=='admin' || 'news-poster-admin')) {


}else{
echo '<script>alert("You Are Not Admin!!Login as Admin For this Admin_Panel..\n redirecting... to Index page")</script>' && header("Location:../index.php");	
} ?>



<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="css/styles.css"/>
		<title>Northampton News - Home</title>
	</head>
	<body>
		<header>
			<section>
				<h1><?php if (isset($_SESSION['login']) && $_SESSION['user_role']=='news-poster-admin') { echo "News Poter Admin Panel";}else{echo "Northampton News || Admin Panel";}?></h1>
				<?php if (isset($_SESSION['login'])) { ?>
                 	<form action="../logout.php">
                 		<button class="logout_button">Logout</button>
                 	</form>
                 <?php } else {
                 echo '<a class="buttons" href="./login.php">Login</a>';
				 echo '<a class="buttons" href="./register.php">SignUP</a>';
                 } ?>
			</section>

		</header>
<body>

