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
        $databaseName = "OrganizeAnEvent";
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
        $username = intval($username);
        if ($username == 0) return false;

        $query = $connection->prepare('CALL GetUserPassword(?)');
        $query->bind_param('s', $username);
        $query->execute();

        $userData = $query->get_result();

        //Error handling
        if(!$userData) {
            echo mysqli_error($connection);
            exit();
        }

        if (mysqli_num_rows($userData) == 0) return false;

        //Verifying the password is correct with the hash
        $userDataArray = mysqli_fetch_array($userData);
        $hash = $userDataArray['Password'];

        return password_verify($password, $hash);
    }

    /**
     * CheckLogin
     *
     * @param string $username
     * @param mysqli $connection to a database
     * 
     * @return ENUMString {'Admin', 'Standard', 'null'} the type of users
     */
    function getUserType(string $username, mysqli $connection) {
        $query = $connection->prepare('CALL GetUserType(?)');
        $query->bind_param('s', $username);
        $query->execute();

        //Error handling
        if(!$query) {
            echo mysqli_error($connection);
            exit();
        }

        $userData = $query->get_result();
        if (mysqli_num_rows($userData) == 0) return false;

        //Verifying the password is correct with the hash
        $userDataArray = mysqli_fetch_array($userData);
        return $userDataArray['Type'];
    }


    /*
    Generate password = password_hash($password, PASSWORD_DEFAULT);
    }*/
?>