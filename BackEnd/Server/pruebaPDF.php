<?php
	setlocale (LC_TIME,"spanish");
	/*$idAlumno=$_GET['idAlumno'];
	$idGrupo=$_GET['idGrupo'];
	$idOri=$_SESSION['username'];
	*/
	require 'Fpdf/fpdf.php';
	//include ("conexion.php");
	//include ("obtenerUsuario.php");
	//$con= conectar();
	$pdf=new FPDF();
	//$sql_e= mysqli_query($con, "SELECT e.ClaveEscuela, e.nombre, e.tipoe, e.periodoActual, e.municipio, e.estado, e.director FROM usuario u, escuela e where e.ClaveEscuela=u.ClaveEscuela and u.idUsuario=".$idAlumno."");

	//$sql_ori=mysqli_query($con, "SELECT nombre, appaterno, apmaterno FROM usuario where idUsuario=".$idOri."");

	//$Escuela= mysqli_fetch_array($sql_e);
	//$Ori= mysqli_fetch_array($sql_ori);

	$pdf->AddPage();
	$pdf->SetFont('Arial','B',12);
	//$pdf->Image('Imagenpdf/Sep.png',5,5,55,20,'PNG');
	$pdf->ln(2);
	$pdf->Cell(160,10,"",0);
	$pdf->SetFont('Arial','',14);
	$pdf->Cell(10,5,"FOLIO: ".rand(9999,99999),0,0,'C');
	$pdf->ln(10);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(70,10,'',0);
	$pdf->Cell(60,10,'Secretaria de Educacion Publica - SEP',0,0,'C');
	
	$pdf->ln(4);
	$pdf->Cell(92,10,'',0);
	$pdf->Cell(10,10,'SAEEB',0,0,'C');
	$pdf->ln(4);
	$pdf->Cell(42,10,'',0);
	$pdf->Cell(50,10,'Sistema Administrativo y Escolar de Educacion Basica',0,0);
	$pdf->ln(8);

	$pdf->Cell(55,10,'',0);
	$pdf->SetFont('Arial','',10);

	//$pdf->Cell(50,10,utf8_decode($Escuela[0])." - ".utf8_decode($Escuela[1]),0);
	$pdf->ln(4);

	$pdf->Cell(65,10,'',0);
	$pdf->SetFont('Arial','',10);

	//$pdf->Cell(50,10,"SECUNDARIA ".utf8_decode($Escuela[2]).". Periodo: ".utf8_decode($Escuela[3]),0);
	$pdf->ln(10);


	$pdf->Cell(60,10,'',0);
	$pdf->SetFont('Arial','B',14);

	$pdf->Cell(50,10,'Boleta Global de Calificaciones',0);
	$pdf->ln(20);
	//$res1 = mysqli_query($con,"SELECT * FROM alumno where idAlumno='$idAlumno'");
	//$IformacionAlumno= mysqli_fetch_array($res1);
	$pdf->Cell(15,10,'',0);
	$pdf->SetFont('Arial','',10);
	$pdf->Cell(30,5,'ID Alumno:',0);
	$pdf->Cell(40,5,'Apellido Paterno:',0);
	$pdf->Cell(50,5,'Apellido Materno:',0);
	$pdf->Cell(50,5,'Nombre(s):',0);

	$pdf->ln(5);
	$pdf->SetFont('Arial','B',10);
	/*$result = mysqli_query($con,"SELECT appaterno,apmaterno,nombre,curp FROM usuario where idUsuario='$idAlumno'");
	$Nombre = mysqli_fetch_array($result);
	$pdf->Cell(15,10,'',0);
	$pdf->Cell(30,5,utf8_decode($IformacionAlumno[0]),0);
	$pdf->Cell(40,5,utf8_decode($Nombre[0]),0);
	$pdf->Cell(50,5,utf8_decode($Nombre[1]),0);
	$pdf->Cell(50,5,utf8_decode($Nombre[2]),0);
	$res = mysqli_query($con,"SELECT nombre FROM grupo where idGrupo='$idGrupo'");
	$Grupo = mysqli_fetch_array($res);
	*/
	$pdf->ln(10);
	$pdf->Cell(15,10,'',0);
	$pdf->SetFont('Arial','',10);
	$pdf->Cell(30,5,'Grado:',0);
	$pdf->Cell(40,5,'Grupo:',0);
	$pdf->Cell(50,5,'CURP:',0);
	$pdf->Cell(40,5,'Turno:',0);
	
	$pdf->ln(5);
	$pdf->Cell(15,10,'',0);
	$pdf->SetFont('Arial','B',10);
	/*
	$pdf->Cell(30,5,utf8_decode($IformacionAlumno[3]),0);
	$pdf->Cell(40,5,utf8_decode($Grupo[0]),0);
	$pdf->Cell(50,5,utf8_decode($Nombre[3]),0);
	$pdf->Cell(40,5,utf8_decode($IformacionAlumno[4]),0);
	*/
	
	

	
	$pdf->ln(15);
	$pdf->SetX(25);
	$pdf->SetFont('Arial','B',10);
	$pdf->Cell(40,5,'ID Materia',0);
	$pdf->Cell(70,5,'Nombre',0);
	$pdf->Cell(50,5,'Calificacion',0,0,'C');
	$pdf->SetFont('Arial','',10);
	$pdf->ln(5);
	/*
	$res2 = mysqli_query($con,"SELECT m.idMateria,m.Nombre,x.Calificacion from 	Materia m,am x where m.idmateria=x.idmateria and idAlumno='$idAlumno'");
	if (mysqli_num_rows($res2)){
		while ($row = mysqli_fetch_array($res2)) 
		{
			$pdf->SetX(25);
			$pdf->Cell(40,5,$row[0],0);
			$pdf->Cell(70,5,utf8_decode($row[1]),0);
			$pdf->Cell(50,5,$row[2],0,0,'C');
			$pdf->ln(5);
		}
	}
	$pdf->ln(3);
	$res3 = mysqli_query($con,"SELECT AVG(calificacion) from am where idAlumno='$idAlumno'");

	$promedio = mysqli_fetch_array($res3);
	$insertaProm=mysqli_query($con, "UPDATE alumno SET promedio=$promedio[0] WHERE idAlumno =$idAlumno");
	$pdf->Cell(55,10,"",0);
	$pdf->SetFont('Arial','B',10);
	$pdf->Cell(90,5,"PROMEDIO GENERAL",0);
	$pdf->Cell(50,5,$promedio[0],0);
	$pdf->ln(15);
	$pdf->Cell(45,10,"",0);

	$pdf->Cell(60,10,utf8_decode($Escuela[4]).' '.utf8_decode($Escuela[5]).', a '.strftime('%d de %B del %Y').'',0);
	$pdf->ln(5);

	$pdf->ln(30);
	$pdf->Cell(1,10,"",0);
	$pdf->Cell(60,10,"____________________________",0);
	$pdf->Cell(5,10,"",0);
	$pdf->Cell(60,10,"____________________________",0);
	$pdf->Cell(5,10,"",0);
	$pdf->Cell(60,10,"____________________________",0);
	$pdf->ln(5);
	$pdf->Cell(1,10,"",0);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(60,10,"Firma del Director",0,0,'C');
	$pdf->Cell(5,10,"",0,0,'C');
	$pdf->Cell(60,10,"Firma del Orientador",0,0,'C');
	$pdf->Cell(5,10,"",0,0,'C');
	$pdf->Cell(60,10,"Firma del Padre o Tutor/a",0,0,'C');

	$pdf->ln(5);
	$pdf->Cell(1,10,"",0);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(60,10,$Escuela[6],0,0,'C');
	$pdf->Cell(5,10,"",0,0,'C');
	$pdf->Cell(60,10,$Ori[0]." ".$Ori[1]." ".$Ori[2],0,0,'C');
	$pdf->Cell(5,10,"",0,0,'C');
	$pdf->Cell(60,10,$IformacionAlumno[2],0,0,'C');
			$pdf->Output();
	*/
?>