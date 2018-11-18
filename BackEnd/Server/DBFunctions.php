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
            mysqli_query($Connection, "SET NAMES 'utf8'"); 
        }
        return $Connection;
    }

    function CheckLogin($Username, $Password, $Connection){
        //Calling the procedure on BD
        $CheckUsr = mysqli_query($Connection, "CALL CheckLogIn(".$Username.")");
        if(!$CheckUsr){
            //Managing exceptions and errors
            echo mysqli_error($Connection);
            exit;
        }
        //Verifying the username
        if(mysqli_num_rows($CheckUsr) > 0)
        {
            //Verifying the password with the hash
            $Row = mysqli_fetch_array($CheckUsr);
            $Hash = $Row['Password'];
            return password_verify($Password, $Hash);
        }
        else{
            //If the usernames doesnt match, return False
            return False;
        }
    }
    /*$res = CheckLogin(123456780, 'root', ConnectDB('localhost'));
    Generate password = password_hash($password, PASSWORD_DEFAULT);
    if($res){
        echo "ok";
    }
    else{
        echo "error";
    }*/
?>