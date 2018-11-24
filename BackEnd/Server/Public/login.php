<?php declare(strict_types=1);

    include_once("../DataBaseFunctions.php");
    
    if (!isset($_SESSION)) session_start();    

    if (isset($_POST['userName']) and isset($_POST['password'])) {
        $connection = getConnectionToDatabase('localhost:3306');
        $haveCredencials = checkLogin($_POST['userName'], $_POST['password'], $connection);

        if ($haveCredencials == true) $_SESSION['logStatus'] = true;
        else $accessError = "Wrong user / password";

        mysqli_close($connection);
    }

    if (isset($_SESSION['logStatus'])) {
        include("index.php");
        exit();
    }
?>

<!DOCTYPE html>
<html style="font-family: 'Lato', sans-serif;">
    <head>
        <!-- Please UFT IS LOVE -->
        <meta charset="UTF-8">

        <!-- How we should see it -->
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <!-- Color in Android Header -->
        <meta name="theme-color" content="#37474f">

        <!-- Icon of the App -->
        <link rel="icon" href="Assets/Favicon.png">

        <title>Organize An Event</title>

        <!-- Google Material Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

        <!-- Google Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    </head>

    <body>
        
        <?php
            echo("<style>");
                include("../../../FrontEnd/Distribution/materialize.min.css");
            echo("</style>");
        ?>
        
        <nav>
            <div class="nav-wrapper center">
                <span style="font-size: 1.7rem">Organize An Event</span>
            </div>
        </nav>

        <br />
        <br />

        <div class="row">
            <div class="col s10 offset-s1 m8 offset-m2 l6 offset-l3">
                <div class="card-panel center-align hoverable z-depth-2" style="background-color: #f2f1f1">
                    <div class="blue-grey-text text-darken-3">

                        <h4> Accede por favor </h4>
                        <br />

                        <form method="post">
                            <div class="row">
                                <div class="input-field col s10 offset-s1 m8 offset-m2">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input 
                                        required
                                        name  = "userName"
                                        id    = "userName"
                                        type  = "text"
                                        class = "validate"
                                        value = <?php if (isset($_POST['userName'])) echo($_POST['userName']) ?>
                                    >
                                    <label for="userName">Usuario</label>
                                </div>
                            <div>
                            <div class="row">
                                <div class="input-field col s10 offset-s1 col m8 offset-m2">
                                    <i class="material-icons prefix">enhanced_encryption</i>
                                    <input 
                                        required
                                        name  = "password"
                                        id    = "password"
                                        type  = "password"
                                        class = "validate"
                                    >
                                    <label for="password">Contraseña</label>
                                </div>
                            </div>

                            <button class="btn waves-effect waves-light" type="submit" name="action" value="Login" style="background-color: #421930">
                                Acceder
                                <i class="material-icons right">send</i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script type="text/javascript">

            document.addEventListener('DOMContentLoaded', function() {
                M.AutoInit();
                <?php if (isset($accessError)) echo "M.toast({html: 'Error: $accessError'})" ?>
            })
        
        </script>
    </body>


</html>