<?php
    function ConnectDB($ThisServer){
        $ServerDB = $ThisServer;
        $UserDB = "root";
        $PasswordDB = "root";
        $NameDB = "oae";
        $Connection = mysqli_connect($ServerDB, $UserDB, $PasswordDB, $NameDB);
        mysqli_query($Connection, "SET NAMES 'utf8'");

        if(mysqli_connect_errno($Connection)){
            echo "Problemas con la conexi&oacute;n al servidor MySQL: ".mysqli_connect_error();
            exit;
        }
        return $Connection;
    }
?>