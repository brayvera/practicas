<?php
	$conn = new mysqli('localhost', 'bray', 'dragontigre2015', 'apsystem2');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>