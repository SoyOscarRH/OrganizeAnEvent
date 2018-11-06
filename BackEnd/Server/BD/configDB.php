<?php
    $serverDB = "localhost";
    $userDB = "root";
    $passwordDB = "root";
    $nameDB = "oae";
    $connection = mysqli_connect($serverDB, $userDB,
    $passwordDB, $nameDB);
    mysqli_query($connection, "SET NAMES 'utf8'");

    if(mysqli_connect_errno($connection)){
        die("Problemas con la conexi&oacute;n al servidor MySQL: ".mysqli_connect_error());
    }
    else{
        mysqli_query($connection, "SET NAMES 'utf8'");
    }
?>