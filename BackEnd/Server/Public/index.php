<?php declare(strict_types=1);
    if (!isset($_SESSION)) session_start();    

    if (!isset($_SESSION['logStatus'])) {
        include("login.php");
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
        <meta name="theme-color" content="#37474f" />

        <!-- Icon of the App -->
        <link rel="icon" href="Assets/Favicon.png?v=2" />

        <title>Organize An Event</title>

        <!-- Google Material Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

        <!-- Google Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    </head>

    <?php
        echo("<style>");
            include("../../../FrontEnd/Distribution/materialize.min.css");
        echo("</style>");
    ?>

    <body>
        <div id="ReactApp" />
        <script type="text/javascript">
            <?php include("../../../FrontEnd/Distribution/bundle.js") ?>
        </script>
    </body>
</html>
