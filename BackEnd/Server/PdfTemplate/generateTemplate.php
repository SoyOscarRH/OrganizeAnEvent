<?php
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    include_once("awardTemplate.php");

    // ==============================================================================================
	// 									   	 RECEIVE INFORMATION
	// ==============================================================================================
	$idEvent = 1;

    /*if (!isset($_SESSION)) session_start();

    // // ONLY ALLOW VALID USERS AND IN POST
    if ($_SESSION['logStatus'] != true || $_SERVER['REQUEST_METHOD'] != 'POST') {
        echo '{"Error": "No login status"}';
        exit();
    }
	*/

    $toSend = array();
    $frontEndData = getFrontEndData();
	
	// ==============================================================================================
	// 									   	 CREATE PDF
	// ==============================================================================================
    $connection = getConnectionToDatabase('localhost:3306');

    // Get number of guests
    $query = $connection->prepare("CALL  GetNumberOfGuests(?)");
    $query->bind_param('s', $idEvent);
    $query->execute();

    $dataArray = mysqli_fetch_array($query->get_result());
    $numGuest = $dataArray[0];

    // Get rfc array
    $query = $connection->prepare("CALL  GetGuestsRFC(?)");
    $query->bind_param('s', $idEvent);
    $query->execute();

    $dataArray = mysqli_fetch_array($query->get_result());
    $rfc = $dataArray[0];

	mysqli_close($connection);
 	
    for($i = 0; $i < $numGuest; $i++)
    {
		awardTemplate($rfc[0][$i]);
    } 
   
  /*  $rfc = 2014171285;
	// Creamos un instancia de la clase ZipArchive
	 $zip = new ZipArchive();
	// Creamos y abrimos un archivo zip temporal
	 $zip->open("miarchivo.zip",ZipArchive::CREATE);
	 // Añadimos un directorio
	 $dir = 'ReconocimientosEVENTO';
	 $zip->addEmptyDir($dir);
	 // Añadimos un archivo en la raid del zip.
	 //$zip->addFile($rfc."pdf", $rfc."pdf");
	 //Añadimos un archivo dentro del directorio que hemos creado
	 $zip->addFile("awardPDF/'.$rfc.'.pdf", $dir."/prueba.pdf");
	 // Una vez añadido los archivos deseados cerramos el zip.
	 $zip->close();
	 // Creamos las cabezeras que forzaran la descarga del archivo como archivo zip.
	 header("Content-type: application/octet-stream");
	 header("Content-disposition: attachment; filename=miarchivo.zip");
	 // leemos el archivo creado
	 readfile('miarchivo.zip');
	 // Por último eliminamos el archivo temporal creado
	 unlink('miarchivo.zip');//Destruye el archivo temporal
*/

?>