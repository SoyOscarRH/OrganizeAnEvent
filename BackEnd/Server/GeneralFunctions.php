<?php declare(strict_types = 1);

    /**
     * Return an asociative array from the frontend
     *
     * @return array Returns the associative array of the info
     */
    function getFrontEndData() {
        return json_decode(file_get_contents("php://input"), true);
    }

?>