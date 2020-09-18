<?php

require_once("../../includes/functions.php");
require('config.php');


if(isset($_GET['s'])){

	$shortcode = $_GET['s'];

  
	$query = "SELECT * FROM shortenedurls WHERE created = $shortcode ";
	$select_user_query = mysqli_query($conn, $query);
	if (!$select_user_query) {

		die("QUERY FAILED" . mysqli_error($conn));

	}


	while ($row = mysqli_fetch_array($select_user_query)) {

		$link_url = $row['long_url'];

		header("Location:$link_url");
		
  }
  



		
}






?>