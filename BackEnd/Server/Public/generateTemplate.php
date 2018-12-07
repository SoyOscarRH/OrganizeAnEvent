<?php
	include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
	include_once("../pdfTemplate/awardTemplate.php");
	
	session_start();

	$toSend = array();

	if ($_SESSION['logStatus'] != true) exit();

	$EventID = $_GET["EventID"];
	$All = $_GET["All"];
	
	$EventID = 1;
	$All = 1;

    // ==============================================================================================
	// 									   GET INFORMATION
	// ==============================================================================================
   	
   	// Database conection
    $connection = getConnectionToDatabase('localhost:3306');

    // Get RFC array
	if ($All == 1) $query = $connection->prepare("CALL GetCurrentGuestsRFC(?)");
        else $query = $connection->prepare("CALL GetGuestsRFC(?)");
		$query->bind_param('i', $EventID);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();
		
		mysqli_close($connection);
   
	// ==============================================================================================
	// 							CREATE DIRECTORY TO SAVE AWARDS
	// ==============================================================================================
	
	$directory = "awardEVENT_".$EventID;
	
	if(mkdir($directory, 777)) {
		
		// ====================================================================
		// 						CREATE PDFs FOR EVENT 
		// ====================================================================
	    
	    for($i = 0; $i < 5; $i++) {
			awardTemplate($toSend[$i]['RFC'], $directory);
		} 

		// ====================================================================
		// 						CREATE ZIP TO DOWNLOAD 
		// ====================================================================
	    
	    // Created an instance of the ZipArchive class
		$zip = new ZipArchive();

		// Zip Name
		$zipName = 'Reconocimientos.zip';

		// Create and open a temporary zip file
		$zip->open($zipName, ZipArchive::CREATE);
		 
		// Add a directory inside zip
		$dir = 'Evento_'.$EventID;
		$zip->addEmptyDir($dir);

		// Add a file inside the directory that we have created
		for ($i=0; $i < 5; $i++) { 
			$zip->addFile($directory."/".$toSend[$i]['RFC'].".pdf", $dir."/".$toSend[$i]['RFC'].".pdf");
		}
		 // Close the zip
		 $zip->close();
		 
		// Create the headers that will force the download of the file as a zip file
		header("Content-type: application/octet-stream");
		header("Content-disposition: attachment; filename=".$zipName);
		// Read the created file
		readfile($zipName);
		// Delete the temporary file created
		unlink($zipName); //Destroy the temporary file

		// ====================================================================		
		// 					DELETE DIRECTORY IN SERVER
		// ====================================================================		
		
		foreach(glob($directory . "/*") as $archivos_carpeta) {             
	        if (is_dir($archivos_carpeta)){
	          rmDir_rf($archivos_carpeta);
	        } 
	        else {
	        unlink($archivos_carpeta);
	        }
	    }
	    rmdir($directory);
	}	
	else
	{
		// Aquí debemos mostrar un mensaje que diga si pudo o no xd
	}

?>
