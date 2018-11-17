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
        else{
            mysqli_query($Connection, "SET NAMES 'utf8'"); //Esta instrucción permite guardar eñes y acentos en la BD ;)
        }
        return $Connection;
    }

    function CheckLogin($Username, $Password, $Connection){
        $Password = password_hash($Password, PASSWORD_DEFAULT);
        $CheckUsr = mysqli_query($Connection, "CALL CheckLogIn(".$Username.", ".$Password.")");
        $InfoCheckUsr = mysqli_num_rows($CheckUsr);

        if($InfoCheckUsr == 1)
            return 1;
        else
            return -1;
    }
?>