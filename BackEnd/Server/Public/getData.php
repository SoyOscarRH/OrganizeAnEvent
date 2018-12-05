<?php
    include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");

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

        $dataArray = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);

        echo json_encode($dataArray);
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