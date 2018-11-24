<?php declare(strict_types = 1);

    /**
     * Return the connection to the system database
     *
     * @param string $serverName The name of the server :v
     * @return object Returns the connection
     */
    function getConnectionToDatabase(string $serverName) {
        $user = "root";
        $password = "root";
        $databaseName = "oae";
        $connection = mysqli_connect($serverName, $user, $password, $databaseName);
        mysqli_query($connection, "SET NAMES 'utf8'");

        if (mysqli_connect_errno($connection)){
            echo "Error MySQL: ".mysqli_connect_error();
            exit();
        }

        return $connection;
    }

    /**
     * CheckLogin
     *
     * @param string $username
     * @param string $password
     * @param mysqli $connection to a database
     * 
     * @return bool return if the user have credencials to enter the system 
     */
    function checkLogin(string $username, string $password, mysqli $connection) {
        $userData = mysqli_query($connection, "CALL GetUserPassword($username)");
        
        //Error handling
        if(!$userData) {
            echo mysqli_error($connection);
            exit();
        }
        if (mysqli_num_rows($userData) == 0) return False;

        //Verifying the password is correct with the hash
        $userDataArray = mysqli_fetch_array($userData);
        $hash = $userDataArray['Password'];
        return password_verify($password, $hash);
    }





    /*$res = CheckLogin(123456780, 'root', ConnectDB('localhost:3306'));
    Generate password = password_hash($password, PASSWORD_DEFAULT);
    if($res){
        echo "ok";
    }
    else{
        echo "error";
    }*/


?>