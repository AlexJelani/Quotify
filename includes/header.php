<?php
include("includes/config.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");

//session_destroy(); 

if (isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
} else {
	header("Location:register.php");
}


?>


<html>

<head>
	<link rel="stylesheet" href="assets/css/style.css">
	<title>Welcome to Slotify!</title>
</head>

<body>

	<div class="mainContainer">

		<div id="topContainer">

			<?php include("includes/navBarContainer.php")     ?>

			<div id="mainViewContainer">



				<div id="mainContent">