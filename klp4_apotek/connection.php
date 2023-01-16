<?php
	$host       = "localhost";
	$username   = "root";
	$pass       = "";
	$database   = "klp4_gis";
	$koneksi = mysqli($host,$username,$pass,$database);
	if ($koneksi->connect_error) {
	   die("Connection failed: " . $koneksi->connect_error);
	}
	  echo "Connected successfully";
?>