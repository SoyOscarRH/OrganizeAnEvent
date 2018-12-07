<?php
    include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    include_once("awardTemplate.php");
    if (!isset($_SESSION)) session_start();


    // // ONLY ALLOW VALID USERS AND IN POST
    // if ($_SESSION['logStatus'] != true || $_SERVER['REQUEST_METHOD'] != 'POST') {
    //     echo '{"Error": "No login status"}';
    //     exit();
    // }

    $toSend = array();
    $connection = getConnectionToDatabase('localhost:3306');
    $frontEndData = getFrontEndData();

    // --------------------------------------------------
    // ------------- GET EVENT DATA ---------------------
    // --------------------------------------------------
    if (isset($_GET['GetEventData'])) {
        $query = $connection->prepare("CALL GetEventDataFromUser(?)");
        $query->bind_param('s', $_SESSION['userName']);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        echo json_encode($toSend);
        exit();
    }


    // --------------------------------------------------
    // ------------- GET GUEST DATA  --------------------
    // --------------------------------------------------
    if (isset($_GET['GetGuestLike'])) {
        $query = $connection->prepare("CALL GuessGuestFullData(?, ?, ?)");
        $query->bind_param('sii', $frontEndData['data'], $frontEndData['EventID'], $_SESSION['userName']);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        echo json_encode($toSend);
        exit();
    }

    // --------------------------------------------------
    // ------------- GET GUEST LIST  --------------------
    // --------------------------------------------------
    if (isset($_GET['GetGuestList'])) {
        $query = $connection->prepare("CALL GetAllGuests(?)");
        $query->bind_param('i', $frontEndData['EventID']);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        echo json_encode($toSend);
        exit();
    }

    // --------------------------------------------------
    // ------------- GET GUEST DATA  --------------------
    // --------------------------------------------------
    if (isset($_GET['SetAssistance'])) {
        $query = $connection->prepare("CALL SetAssistance(?, ?, ?, ?, ?)");
        $query->bind_param('siisi', $frontEndData['RFC'], $frontEndData['EventID'], $frontEndData['seat'], $frontEndData['representant'], $_SESSION['userName']);

        $query->execute();
        $seat = mysqli_fetch_array($query->get_result());

        $query->close();

        $toSend['correct'] = $seat;

        $toSend['Message'] = "Pase de lista con exito. <br>Número de asiento: ".$seat[0];
        echo json_encode($toSend);
        exit();
    }


    // --------------------------------------------------
    // ------------- GET GUEST DATA  --------------------
    // --------------------------------------------------
    if (isset($_GET['GetAwards'])) {

        if ($frontEndData['all'] == 1) $query = $connection->prepare("CALL GetCurrentGuestsRFC(?)");
        else $query = $connection->prepare("CALL GetGuestsRFC(?)");

        $var = 1;
        $query->bind_param('i', $var);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        for ($i = 0; $i < 10; $i++) {
            awardTemplate($toSend[$i]['RFC']);
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

        echo json_encode($toSend);

        exit();
    }




    
    $toSend['cool'] = 1212;
    $toSend['userName'] = $_SESSION['userName'];

    echo json_encode($toSend);

?>