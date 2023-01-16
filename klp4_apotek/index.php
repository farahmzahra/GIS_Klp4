<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.9.0/css/ol.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<style type="text/css">
		.map {
			height: 500px;
			widows: 100%;
		}
		h3 {
			border: 2px solid #E93838;
			padding: 5px;
		}
	</style>
	<script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.9.0/build/ol.js"></script>
	<title>Apotek</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php">Apotek</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="nav-link ">
			<input type="checkbox" id="districts" name="districts" value="Titik Apotek" checked onchange="toggleLayer(event);">
      <span class="pcoded-mtext">Lokasi Apotek</span>
		<a class="nav-link ">
      <input type="checkbox" id="districts" name="districts" value="Gabungan" checked onchange="toggleLayer(event);">
      <span class="pcoded-mtext">Batas Kabupaten</span>
    </a>
    <a class="navbar-brand" href="table.php">Data Apotek</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>
</div>
	<div id="map" class="map"></div>
	<div class="ol-popup" id="popup">
		<a href="#" id="popup-closer" class="ol-popup-closer"></a>
		<div id="popup-content"></div>
	</div>
	<script type="text/javascript">
		
		var apotek = new ol.layer.Vector({
			title: "Titik Apotek",
			source: new ol.source.Vector({
				format: new ol.format.GeoJSON(),
				url: 'data/apotek.json',
				visible: true
			}),
			style: new ol.style.Style({
				image: new ol.style.Icon(({
					anchor: [0.5, 46],
					anchorXUnits: 'flaticon',
					anchorYUnits: 'pixels',
					src: 'icon/drugstore.png'
				}))
			})
		});

		var riau = new ol.layer.Vector({
			title: "Gabungan",
			source: new ol.source.Vector({
				format: new ol.format.GeoJSON(),
				url: 'data/Gabungan.json',
				visible: true
			})
		});

		var map = new ol.Map({
			target: 'map',
			layers: [
				new ol.layer.Tile({
					source: new ol.source.OSM()
				}), riau, apotek
			],
			view: new ol.View({
				center: ol.proj.fromLonLat([101.438309, 0.510440]),
				zoom: 13
			})
		});

	function toggleLayer(eve) {
    var lyrname = eve.target.value;
    var checkedStatus = eve.target.checked;
    var lyrList = map.getLayers();

    lyrList.forEach(function(element){
        if (lyrname == element.get('title')){
            element.setVisible(checkedStatus);
        }
    });
}

	</script>
	<script type="text/javascript">
	function checkAll() {
      var inputs = document.querySelectorAll('.check2');
      for (var i = 0; i < inputs.length; i++) {
          inputs[i].checked = true;
      }
  }
  //create uncheckall function
  function uncheckAll() {
      var inputs = document.querySelectorAll('.check2');
      for (var i = 0; i < inputs.length; i++) {
          inputs[i].checked = false;
      }
  }

  window.onload = function() {
      window.addEventListener('load', checkAll, false);
  }
	</script>
	<script type="text/javascript">
		var container = document.getElementById('popup'),
			content_element = document.getElementById('popup-content'),
			closer = document.getElementById('popup-closer');

		closer.onclick = function() {
			overlay.setPosition(undefined);
			closer.blur();
			return false;
		};
		var overlay = new ol.Overlay({
			element: container,
			autoPan: true,
			offset: [0, -10]
		});
		map.addOverlay(overlay);
		var FullScreen = new ol.control.FullScreen();
		map.addControl(FullScreen);

		map.on('click', function(evt) {
			var feature = map.forEachFeatureAtPixel(evt.pixel,
				function(feature, layer ) {
					return feature;
				});
			if (feature) {
				var geometry = feature.getGeometry();
				var coord = geometry.getCoordinates();
				switch (feature.get('kecamatan')) {
					case 'Tampan':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Payung Sekaki': 
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
						case 'Lima Puluh':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Sail': 
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Pekanbaru':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Sukajadi': 
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
						case 'Senapelan':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#cc3232; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Bukit Raya': 
						var content = '<p style="border-width:3px; border-style:solid; border-color:#2dc937; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
						case 'Marpoyan Damai':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#2dc937; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					case 'Tenayan Raya': 
						var content = '<p style="border-width:3px; border-style:solid; border-color:#2dc937; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
						case 'Rumbai Pesisir':
						var content = '<p style="border-width:3px; border-style:solid; border-color:#2dc937; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
					default:
						var content = '<p style="border-width:3px; border-style:solid; border-color:#FFFFFF; background:#FFFFFF"; padding:10px; border-radius:10px;>Nama Apotek: ' + feature.get('nama_apotek') + '<br>Alamat: ' + feature.get('alamat') +'<br>Kecamatan: ' + feature.get('kecamatan') + '</p>';
						break;
				}
				content_element.innerHTML = content;
				overlay.setPosition(coord);
				console.info(feature.getProperties());
			}
		});
	</script>
	<div style="margin: 10px;">
		<h6>Keterangan</h6>
		<p style="color: #cc3232;">Merah: Jumlah Apotek dan Banyak Penduduk dari Kecamatan Tidak Merata</p>
		<p style="color: #2dc937">Hijau: Jumlah Apotek dan Banyak Penduduk dari Kecamatan Merata</p>
	</div>
	</div>
</body>
</html>