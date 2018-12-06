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

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        echo json_encode($toSend);
        exit();
    }


    // --------------------------------------------------
    // ------------- GET GUEST DATA  --------------------
    // --------------------------------------------------
    if (isset($_GET['GetGuestLike'])) {
        $query = $connection->prepare("CALL GetGuestFullData(?, ?, ?)");
        $query->bind_param('sii', $frontEndData['data'], $frontEndData['EventID'], $_SESSION['userName']);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        echo json_encode($toSend);
        exit();
    }

    // --------------------------------------------------
    // ------------- GET GUEST DATA  --------------------
    // --------------------------------------------------
    if (isset($_GET['PassGuestAssistance'])) {

        $query = $connection->prepare("CALL GetGuestFullData(?, ?, ?)");

        $query->bind_param('sii', $frontEndData['data'], $frontEndData['EventID'], $_SESSION['userName']);
        $query->execute();

        $toSend = mysqli_fetch_all($query->get_result(), MYSQLI_ASSOC);
        $query->close();

        exit();
    }



















    
    $toSend['cool'] = 1212;
    $toSend['userName'] = $_SESSION['userName'];

    echo json_encode($toSend);

?>