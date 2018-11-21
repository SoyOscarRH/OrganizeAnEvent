<?php
	setlocale (LC_TIME,"spanish");
	/*$idAlumno=$_GET['idAlumno'];
	$idGrupo=$_GET['idGrupo'];
	$idOri=$_SESSION['username'];
	*/
	require 'Fpdf/fpdf.php';
	$pdf=new FPDF();
	$pdf->AddPage();
	$pdf->SetFont('Arial','B',12);
	$pdf->ln(2);
	$pdf->Cell(160,10,"",0);
	$pdf->SetFont('Arial','',14);
	$pdf->Cell(10,5,"FOLIO: ".rand(9999,99999),0,0,'C');
	$pdf->ln(10);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(70,10,'',0);
	$pdf->Cell(60,10,'Secretaria de Educacion Publica - SEP',0,0,'C');
	$pdf->Output();
?>