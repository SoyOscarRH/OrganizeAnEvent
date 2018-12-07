<?php
	include_once("../DataBaseFunctions.php");
	include_once("../GeneralFunctions.php");
	
	//$idEvent = $_GET["EventID"];
	$idEvent = 1;
	
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
//	echo json_encode($toSend);

	$dataPoints = array();
	for($i = 0; $i < sizeof($toSend); $i++) {
		$dataPoints[$i] = array("label"=> "".$toSend[$i]['Place']."", "y"=> 590);
		//echo json_encode($toSend);
	}

	// ================================================================================================
	//
	// ================================================================================================
	// Database conection
    $connection = getConnectionToDatabase('localhost:3306');
    // Get RFC array
	$query = $connection->prepare("CALL  GetPrizes(?)");
    $query->bind_param('i', $idEvent);
    $query->execute();
    $prize = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
    $query->close();
	echo json_encode($prize);



	$dataPoints2 = array(
	array("x"=> 10, "y"=> 41),
	array("x"=> 20, "y"=> 35),
	array("x"=> 30, "y"=> 50),
	array("x"=> 40, "y"=> 45),
	array("x"=> 50, "y"=> 52),
	array("x"=> 60, "y"=> 68),
	array("x"=> 70, "y"=> 38),
	array("x"=> 80, "y"=> 71),
	array("x"=> 90, "y"=> 52),
	array("x"=> 100, "y"=> 60),
	array("x"=> 110, "y"=> 36),
	array("x"=> 120, "y"=> 49),
	array("x"=> 130, "y"=> 41)
);
	
?>
<!DOCTYPE HTML>
<html>
<head>  
	<link rel="stylesheet" href="./Assets/estilos.css">

<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title:{
		text: "Asistencia por Unidad Académica"
	},
	subtitles: [{
		text: ""
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

var charts = new CanvasJS.Chart("chart", {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Asistencia por Premio"
	},
	data: [{
		type: "column", //change type to bar, line, area, pie, etc
		//indexLabel: "{y}", //Shows y value on all Data Points
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",   
		dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
	}]
});
charts.render();
 
}

</script>
</head>
<body>
	<div class="sub-container">
		<div class="text-container">
			<span>
				<font size=4>
					# de Asistentes totales:
				</font> 
			</span>
		</div>
	</div>
	<div >
		<div id="chartContainer" style="height: 750px; width: 100%;"></div>
		<br>
		<br>
		<div id="chart" style="height: 750px; width: 100%;"></div>

	</div>
	
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>          


