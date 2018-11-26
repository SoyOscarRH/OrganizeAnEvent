<?php declare(strict_types=1);
    if (!isset($_SESSION)) session_start();    
    if (isset($_COOKIE[session_name()])) setcookie(session_name(), "", time()-3600, "/");
    $_SESSION = array();
    session_destroy();

    header('Location: /');
    exit();
?>