<?php
    include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");

    if (!isset($_SESSION)) session_start();

    // ONLY ALLOW VALID USERS AND IN POST
    if ($_SESSION['logStatus'] != true || $_SERVER['REQUEST_METHOD'] != 'POST') {
        echo '{"Error": "No login status"}';
        exit();
    }

    $toSend = array();

    // --------------------------------------------------
    // ------------- GET EVENT DATA ---------------------
    // --------------------------------------------------
    if (isset($_GET['GetEventData'])) {
        $frontEndData = getFrontEndData();
        $frontEndData['datssa'] = $_SESSION['userName'];

        echo json_encode($frontEndData);
        exit();
    }



    if (isset($_GET['GetUserData'])) {
        $frontEndData = getFrontEndData();
        $frontEndData['datssa'] = $_SESSION['userName'];


        echo json_encode($frontEndData);
        exit();
    }
    
    $toSend['cool'] = 1212;
    $toSend['userName'] = $_SESSION['userName'];

    echo json_encode($toSend);

?>