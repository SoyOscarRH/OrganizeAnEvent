<?php
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    include_once("awardTemplate.php");

	$toSend = array();
    $connection = getConnectionToDatabase('localhost:3306');
    $frontEndData = getFrontEndData();
	
	// ==============================================================================================
	// 									   	 CREATE PDF
	// ==============================================================================================
    $connection = getConnectionToDatabase('localhost:3306');

	if ($frontEndData['all'] == 1) $query = $connection->prepare("CALL GetCurrentGuestsRFC(?)");
        else $query = $connection->prepare("CALL GetGuestsRFC(?)");

        $var = 1;
        $query->bind_param('i', $var);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();


    for($i = 0; $i < 10; $i++) {
		awardTemplate($toSend[$i]['RFC']);
	} 
	
	echo json_encode($toSend);

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