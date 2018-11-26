<?php
    include_once("../DataBaseFunctions.php");
    if (!isset($_SESSION)) session_start();  
    
    
    $toSend = array();

    $toSend['cool'] = 1212;
    $toSend['userName'] = $_SESSION['userName'];

    echo json_encode($toSend);

?>