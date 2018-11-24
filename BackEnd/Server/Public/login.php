<!DOCTYPE html>
<html>
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
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet" />

        <!-- Google Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    </head>

    <body>
        
        <?php
            echo("<style>");
            include("../../../FrontEnd/Distribution/materialize.min.css") ;
            echo("</style>");
        ?>
        
        <div class="navbar-fixed">
            <nav class="indigo darken-2">
                <div class="nav-wrapper container">

                    <div class="brand-logo white-text center">
                        T de Tiendita
                    </div>

                </div>
            </nav>
        </div>

        <br />
        <br />
        <br />

        <div class="row">
            <div class="col s8 offset-s2">
                <div class="card-panel indigo lighten-4 center-align teal accent-1 z-depth-3 blue-grey-text text-darken-3">
                    
                    <br />
                    <h4> Accede por favor </h4>
                    <br />

                    <form method = "post">
                        <div class="row">
                            <div class="input-field col s6 offset-s3">
                                <i class="material-icons prefix">account_circle</i>
                                <input name="UserName" id="UserName" type="text" class="validate">
                                <label for="UserName">Usuario / Correo</label>
                            </div>
                            <div class="input-field col s6 offset-s3">
                                <i class="material-icons prefix">enhanced_encryption</i>
                                <input name="Password" id="Password" type="password" class="validate">
                                <label for="Password">Contraseña</label>
                            </div>
                        </div>

                        <button class="btn waves-effect waves-light " type="submit" name="action" value="Login">
                            Acceder
                            <i class="material-icons right">send</i>
                        </button>
                    </form>

                </div>
            </div>
        </div>
        
  </BODY>

</HTML>