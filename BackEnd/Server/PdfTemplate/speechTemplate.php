<?php 
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    require('mysql_table.php');
    setlocale (LC_TIME, "spanish");

    $idEvent = 1;
	// ===============================================================
	// 					GET DATABASE INFORMATION
	// ===============================================================
	// Database conection
    $connection = getConnectionToDatabase('localhost:3306');

	$query = $connection->prepare("CALL GetPrizes(?)");
    $query->bind_param('i', $idEvent);
    $query->execute();

    $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
    $query->close();
	//echo $toSend[0]['PrizeID'];
	mysqli_close($connection);

	// ===============================================================
	// 								PDF 
	// ===============================================================

	class PDF extends PDF_MySQL_Table {
		function Header() {
		    // Title
		    $this->SetFont('Arial','',18);
		    $this->Cell(0,6,'GALARDONADOS 2018',0,1,'C');
		    $this->SetFont('Arial','',12);
		    $this->Ln(10);
		    // Ensure table header is printed
		    parent::Header();
		}
	}

	$pdf = new PDF();									// Create PDF
	$pdf->AddPage();									// Add new page
	
	$connection = getConnectionToDatabase('localhost:3306');	// Database conection

	// For each prize
	for($i = 0; $i < sizeof($toSend); $i++) {
		$idPrize = $toSend[$i]['PrizeID'];

		// Get prize information
		$query = $connection->prepare("CALL GetSpeechInfo(?, ?)");
	    $query->bind_param('ii', $idEvent, $idPrize);
	    $query->execute();
	    $infPrize = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
	    $query->close();

        //echo json_encode($infPrize);
		// ===============================================================
		// 					GENERAL INFORMATION PRIZE		
		// ===============================================================
		$pdf -> ln(10);
		$pdf -> Cell(1);
		$pdf -> SetFont('Helvetica', '', 12);												// Font style
		$pdf -> Cell(200, 10, 'PREMIO:'.utf8_decode($infPrize[0]['Prize']), 100, 100, 'C');
/*
		// Table: specify 4 columns
		$pdf->AddCol('RFC', 60, 'NOMBRE');
		$pdf->AddCol('RFC', 30, 'RFC');
		$pdf->AddCol('RFC', 25, 'ASIENTO');
		$pdf->AddCol('RFC', 40, 'OBSERVACIONES', 'R');
		$prop = array('HeaderColor'=>array(255, 150, 100),
		            'color1'=>array(210, 245, 255),
		            'color2'=>array(255, 255, 210),
		            'padding'=>2);
		
		//$pdf->Table($connection, 'select RFC from Guest ', $prop);
		$pdf->Table($connection, 'CALL  GetSpeechInfo('.$idEvent.','.$idPrize.')', $prop);
*/
	} 


	$pdf->Output();

?>