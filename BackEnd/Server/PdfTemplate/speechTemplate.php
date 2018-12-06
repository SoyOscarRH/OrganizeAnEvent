<?php 
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    require('mysql_table.php');
    setlocale (LC_TIME, "spanish");

	
	// ==============================================================================================
	// 										PRINCIPAL INFORMATION
	// ==============================================================================================

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

	// Connect to database
	//$link = mysqli_connect('localhost','login','password','db');

	$pdf = new PDF();
	$pdf->AddPage();
	$link = getConnectionToDatabase('localhost:3306');
	// First table: output all columns
	//$pdf->Table($link,'select Username, Username, Type from user');
	//$pdf->AddPage();
	// Second table: specify 3 columns

	$pdf->AddCol('RFC', 15, 'No.');
	$pdf->AddCol('RFC', 60, 'NOMBRE');
	$pdf->AddCol('RFC', 30, 'RFC');
	$pdf->AddCol('RFC', 25, 'ASIENTO');
	$pdf->AddCol('RFC', 40, 'OBSERVACIONES', 'R');
	$prop = array('HeaderColor'=>array(255, 150, 100),
	            'color1'=>array(210, 245, 255),
	            'color2'=>array(255, 255, 210),
	            'padding'=>2);
	
	$pdf->Table($link, 'select RFC from Guest ', $prop);
	
	//$pdf->Table($link, 'CALL  GetGuestFullName("ZUCM690919")', $prop);
	$pdf->Output();

?>