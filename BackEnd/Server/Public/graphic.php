<?php
	include_once("../DataBaseFunctions.php");
	include_once("../GeneralFunctions.php");
	
	// ==============================================================================================
	// 									   	 GET INFORMATION
	// ==============================================================================================
	// Database conection
    $connection = getConnectionToDatabase('localhost:3306');
    // Get RFC array
	$query = $connection->prepare("CALL GetAllPlaces()");
    //$query->bind_param('i', $idEvent);
    $query->execute();
    $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
    $query->close();
	//echo json_encode($toSend);

	

	$dataPoints = array();
	$connection = getConnectionToDatabase('localhost:3306');

	for($i = 0; $i < sizeof($toSend); $i++) {
		
		$dataPoints[$i] = array("label"=> "".$toSend[$i]['PlaceID']."", "y"=>1 );
	}

?>
<!DOCTYPE HTML>
<html>
<head>  
	<link rel="stylesheet" href="./Assetsestilos.css">

<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title:{
		text: "Asistencia por Unidad Académica"
	},
	subtitles: [{
		text: ".."
	}],
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		yValueFormatString: "#,##0",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
	<div>
		<span>
		</span>
	</div>
	<div>
		<div id="chartContainer" style="height: 750px; width: 100%;"></div>
	</div>
	
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>          