<?php
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    include_once("Fpdf/fpdf.php");

	function awardTemplate($rfc, $directory)
	{

		// ==============================================================================================
		// 									   	 GET INFORMATION
		// ==============================================================================================
		// Get user type
	    $connection = getConnectionToDatabase('localhost:3306');
	    $query = $connection->prepare("CALL  GetGuestFullName(?)");
	    $query->bind_param('s', $rfc);
	    $query->execute();

	    $dataArray = mysqli_fetch_array($query->get_result());
		$NameGuest = $dataArray[0];
		$query->close();
		mysqli_close($connection);

		// ==============================================================================================
		// 										PRINCIPAL INFORMATION
		// ==============================================================================================
		setlocale (LC_TIME, "spanish");								// Can say things in spanish
		$pdf = new FPDF();											// Create a new PDF 
		$pdf -> AddPage('L', 'Letter', 0);							// New page with some characteristics
		$pdf -> SetFont('Arial', 'B', 30);							// Font style
		
		// ==============================================================================================
		// 								    		HEADER IMAGE
		// ==============================================================================================
		
		$awardPNG = "ImagesPdf/Award/Award.jpg";
		//$awardPNG = $_SERVER['DOCUMENT_ROOT'] . "/../PdfTemplate/ImagesPdf/Award/" . 'Award.jpg';
		$pdf -> Image($awardPNG, 0, 0, 285, 220, 'JPG');					// Put an image

		// ==============================================================================================
		// 								    		GUEST NAME
		// ==============================================================================================
		$pdf -> ln(70);																	// Some lines
		$pdf -> Cell(1);																// Spaces
	
		$pdf -> Cell(250, 30, utf8_decode($NameGuest), 100, 100, 'C');					// Guest name

		// ==============================================================================================
		// 								   		GUEST INFORMATION
		// ==============================================================================================

		$pdf -> SetFont('Helvetica', '', 12);												// Font style
		$pdf -> ln(10);
		$pdf -> Cell(1);
		$pdf -> Cell(250, 10, 'Galardonado al '. utf8_decode('Mérito Politécnico'), 100, 100, 'C');
		$pdf -> Cell(250, 10, 'Por su esfuerzo realizado en sus labores '. utf8_decode('Académicas'), 100, 100, 'C');

		// ==============================================================================================
		// 								   		EVENT INFORMATION
		// ==============================================================================================
		
		//$pdf -> Cell(250, 10, $Month. ','.$Year, 100, 100, 'C');						// Date
		$pdf -> Cell(250, 10, 'Noviembre, 2018', 100, 100, 'C');						// Date
		
		// ==============================================================================================
		// 								   	  DIRECTOR INFORMATION
		// ==============================================================================================
		
		$pdf -> SetFont('Arial', 'B', 10);												// Font style
		$pdf -> ln(25);																	// Some lines
		$pdf -> Cell(1);																// Spaces
		//$pdf -> Cell(250, 10, '__________________________________           __________________________________         __________________________________', 100, 100, 'C');
		$pdf -> Cell(255, 10, 'Dr. Emmanuel Alejandro Merchan Cruz     Dr. Mario Alberto Rodriguez Casas     M. en C. Hector Leoncio Martinez ', 100, 100, 'C');		
		$pdf -> Cell(250, 10, 'Director General', 100, 100, 'C');

		// ==============================================================================================
		// 								   		 FOOTER IMAGE
		// ==============================================================================================
		
		
		//$pdf -> Image('ImagesPdf/Footer.PNG', 0, 190, 300, 25, 'PNG');				// Put an image
		$fileName = $directory."/".$rfc.'.pdf';
		//$fileName = $_SERVER['DOCUMENT_ROOT']."/../PdfTemplate/".$directory."/".$rfc.'.pdf';
		//$pdf->Output($fileName, 'F');
	}
	
?>
