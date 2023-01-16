<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.9.0/css/ol.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title></title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="index.php">Apotek</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <a class="navbar-brand" href="table.php">Data Apotek</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		  </div>
		  <div class="input-group" style="margin-left: 500px;">
		  	<form method="POST" style="display: flex;">
			  <input type="search" class="form-control rounded" placeholder="Search Nama Apotek" aria-label="Search" aria-describedby="search-addon" name="cari" />
			  <input type="submit" class="btn btn-outline-primary" value="Search" name="btncari">
			</form>
		  </div>
		</nav>
		<?php 

		$con = mysqli_connect("localhost","root","","klp4_gis");
		if(isset($_POST['btncari'])){
	        $cari = $_POST['cari'];
	        $data = mysqli_query($con, "SELECT * FROM apotek WHERE nama LIKE '%".$cari."%'");
	    }
	    else{
	        $data = mysqli_query($con, "SELECT * FROM apotek"); 
	    }
		$no = 1;

		echo "<table class='table table-bordered'>
		<tr>
		<th>No</th>
		<th>Nama Apotek</th>
		<th>Alamat Apotek</th>
		<th>Kecamatan</th>
		</tr>";

		while($row = mysqli_fetch_array($data))
		{
		echo "<tr>";
		echo "<td>" . $no++ . "</td>";
		echo "<td>" . $row['nama'] . "</td>";
		echo "<td>" . $row['alamat'] . "</td>";
		echo "<td>" . $row['kecamatan'] . "</td>";
		echo "<td>" . "<img src={$row['foto']} class='w-50'>" . "</td>";
		echo "</tr>";
		}
		echo "</table>";

		mysqli_close($con);

		?>
	</div>
</body>
</html>