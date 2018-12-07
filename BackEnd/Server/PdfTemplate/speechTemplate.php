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
	

	// For each prize
	for($i = 0; $i < sizeof($toSend); $i++) {
		$idPrize = $toSend[$i]['PrizeID'];

		// Get prize information
		$connection = getConnectionToDatabase('localhost:3306');	// Database conection
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
		$pdf -> SetFont('Helvetica', '', 12);	
		$pdf -> Cell(0, 6, 'PREMIO:'.utf8_decode($infPrize[0]['Prize']), 0, 1, 'C');							
		$pdf -> Cell(0, 15, utf8_decode($infPrize[0]['Speech']), 0, 1, 'C');										

		// ===============================================================
		// 						YES ASSISTANCE		
		// ===============================================================	

        $pdf -> Cell(0, 6, 'SI ASISTIERON:', 0, 1, 'C');							

        $link = getConnectionToDatabase('localhost:3306');	// Database conection
		// Table: specify 4 columns
		$pdf->AddCol('FullName', 70, 'NOMBRE');
		$pdf->AddCol('RFC', 30, 'RFC');
		$pdf->AddCol('Seat', 25, 'ASIENTO');
		$pdf->AddCol('Comment', 50, 'OBSERVACIONES', 'R');
		$prop = array('HeaderColor'=>array(255, 150, 100),
		            'color1'=>array(210, 245, 255),
		            'color2'=>array(255, 255, 210),
		            'padding'=>2);
		//$pdf->Table($link, 'select RFC from Guest ', $prop);
		$pdf->Table($link, 'CALL GetYesEventGuests('.$idEvent.','.$idPrize.')', $prop);
		//echo 'CALL GetNoEventGuests('.$idEvent.','.$idPrize.')';


		$pdf -> Cell(0, 6, 'NO ASISTIERON:', 0, 1, 'C');							

		// ===============================================================
		// 						NO ASSISTANCE		
		// ===============================================================	
        $link = getConnectionToDatabase('localhost:3306');	// Database conection
		// Table: specify 4 columns
		$pdf->AddCol('FullName', 70, 'NOMBRE');
		$pdf->AddCol('RFC', 30, 'RFC');
		$pdf->AddCol('Seat', 25, 'ASIENTO');
		$pdf->AddCol('Comment', 50, 'OBSERVACIONES', 'R');
		$prop = array('HeaderColor'=>array(200, 150, 100),
		            'color1'=>array(255, 245, 255),
		            'color2'=>array(200, 255, 210),
		            'padding'=>2);
		//$pdf->Table($link, 'select RFC from Guest ', $prop);
		$pdf->Table($link, 'CALL GetNoEventGuests('.$idEvent.','.$idPrize.')', $prop);
		//echo 'CALL GetNoEventGuests('.$idEvent.','.$idPrize.')';
	} 

	$pdf->Output();

?>