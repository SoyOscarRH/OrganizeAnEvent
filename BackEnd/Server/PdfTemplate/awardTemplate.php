<?php
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");

    /*if (!isset($_SESSION)) session_start();

    // // ONLY ALLOW VALID USERS AND IN POST
    if ($_SESSION['logStatus'] != true || $_SERVER['REQUEST_METHOD'] != 'POST') {
        echo '{"Error": "No login status"}';
        exit();
    }
	*/
    $toSend = array();
    $connection = getConnectionToDatabase('localhost:3306');
    $frontEndData = getFrontEndData();
	
	// ==============================================================================================
	// 									   PRINCIPAL VARIABLES
	// ==============================================================================================
	$rfc = 2014171285;	
	/*
		$rfc = $_GET['rfc'];
		$idEvent = $_GET['idEvent'];
	*/

	// ==============================================================================================
	// 									   	 GET INFORMATION
	// ==============================================================================================
	/*
		$NameGuest = procedure($rfc, $idEvent);
		$Month = procedure($idEvent);
		$Year = procedure($idEvent);
	*/

	// ==============================================================================================
	// 										PRINCIPAL INFORMATION
	// ==============================================================================================
	setlocale (LC_TIME, "spanish");								// Can say things in spanish
	define('FPDF_FONTPATH','Fpdf/font');
	require 'Fpdf/fpdf.php';									// I need it
	$pdf = new FPDF();											// Create a new PDF 
	$pdf -> AddPage('L', 'Letter', 0);							// New page with some characteristics
	$pdf -> SetFont('Arial', 'B', 25);							// Font style
	
	// ==============================================================================================
	// 								    		HEADER IMAGE
	// ==============================================================================================
	
	$pdf -> Image('ImagesPdf/Award/Award.jpg', 0, 0, 285, 220, 'JPG');					// Put an image

	// ==============================================================================================
	// 								    		GUEST NAME
	// ==============================================================================================
	$pdf -> ln(70);																	// Some lines
	$pdf -> Cell(1);																// Spaces
//	$pdf->Cell(50,10,utf8_decode($Escuela[0])." - ".utf8_decode($Escuela[1]),0);
//	$pdf -> Cell(250, 25, utf8_decode($NameGuest), 100, 100, 'C');					// Guest name


	$pdf -> SetFont('Helvetica', '', 30);							
	$pdf -> Cell(250, 25, utf8_decode('JOSE ANTONIO ORTÍZ RAMIREZ'), 100, 100, 'C');// Guest name

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
	
	//$pdf -> Image('ImagesPdf/Footer.PNG', 0, 190, 300, 25, 'PNG');					// Put an image
	$fileName = 'awardPDF/'.$rfc.'.pdf';
	$pdf->Output($fileName, 'F');

?>