<?php
include("includes/config.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");
include("includes/classes/Song.php");

//session_destroy(); 

if (isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
	echo "<script>userLoggedIn = '$userLoggedIn';</script>";


} else {
	header("Location:register.php");
}


?>


<html>

<head>
	<link rel="stylesheet" href="assets/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="assets/js/script.js"></script>
	<title>Welcome to Slotify!</title>
</head>

<body>

	
	<div class="mainContainer">

		<div id="topContainer">

			<?php include("includes/navBarContainer.php")     ?>

			<div id="mainViewContainer">



				<div id="mainContent">