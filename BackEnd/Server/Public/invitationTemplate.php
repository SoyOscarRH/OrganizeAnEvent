<?php
    // ==============================================================================================
    //                                     PRINCIPAL VARIABLES
    // ==============================================================================================
    

    include_once("../DataBaseFunctions.php");
    include_once("../GeneralFunctions.php");
    include_once("awardTemplate.php");
    if (!isset($_SESSION)) session_start();

    // ONLY ALLOW VALID USERS AND IN POST
    if ($_SESSION['logStatus'] != true || $_SERVER['REQUEST_METHOD'] != 'POST') {
        echo '{"Error": "No login status"}';
        exit();
    }

    $toSend = array();
    $connection = getConnectionToDatabase('localhost:3306');
    $frontEndData = getFrontEndData();


    $rfc = $frontEndData['RFC'];
    $idEvent = $frontEndData['EventID'];
    $email = $frontEndData['Email'];

    // ==============================================================================================
    //                                       GET INFORMATION
    // ==============================================================================================
    /*
        $Day = procedure($idEvent);
        $Month = procedure($idEvent);
        $Time = procedure($idEvent);
        $School = procedure($rfc);
    */

    // ==============================================================================================
    //                                      QR AND BARCODE LIBRARIES
    // ==============================================================================================
    include_once('./phpqrcode/qrlib.php'); 
    include_once('./barcode.php');
    include_once("../SendEmail.php");

    // ==============================================================================================
    //                                      PRINCIPAL INFORMATION
    // ==============================================================================================
    setlocale (LC_TIME, "spanish");                             // Can say things in spanish
    include_once('../PdfTemplate/Fpdf/fpdf.php');                                    // I need it
    $pdf = new FPDF();                                          // Create a new PDF 
    $pdf -> AddPage('P', 'Letter', 0);                          // New page with some characteristics
    $pdf -> SetFont('Arial', 'B', 25);                          // Font style

    
    
    // ==============================================================================================
    //                                          HEADER IMAGE
    // ==============================================================================================
    
    $pdf -> Image('../PdfTemplate/ImagesPdf/Invitation/Header.PNG', 0, 0, 216, 50, 'PNG');         // Put an image

    // ==============================================================================================
    //                                        INTRODUCCTION
    // ==============================================================================================
    
    $pdf -> ln(45);                                                                 // Some lines
    $pdf -> Cell(2);                                                                // Spaces
    $pdf -> SetFont('Arial', 'B', 15);                                              // Font style

    $Introduction = 'El Instituto '. utf8_decode('Politécnico'). ' Nacional se honra en invitarle a la';
    $IntroductionP1 = 'Ceremonia de reconocimiento al '. utf8_decode('Mérito Politécnico').'.';

    $pdf -> Cell(190, 10, $Introduction, 100, 100, 'C');                             // Add text
    $pdf -> ln(1);                                                                   // Some lines
    $pdf -> Cell(190, 10, $IntroductionP1, 100, 100, 'C');                           // Add text
    $pdf -> ln(4);                                                                   // Some lines       

    // ==============================================================================================
    //                                      EVENT INFORMATION
    // ==============================================================================================
    
//  $EvenInformation = 'Ceremonia que se realizara el '. utf8_decode('día'). $Day.' de'. $Month.' a las '.$Time.' horas' ;
    $EvenInformation = 'Ceremonia que se realizara el '. utf8_decode('día').' 30 de Marzo a las 10:15 horas' ;
    $EvenInformationP1 = 'en el Auditorio B "Manuel Moreno Torres" del';
    $EvenInformationP2 = 'Centro Cultural Jaime Torres Bodet';
    $EvenInformationP3 = 'el cual se encuentra ubicado en:';
    
    $pdf -> Cell(190, 10, $EvenInformation, 100, 100, 'C');                         // Add text
    $pdf -> Cell(190, 10, $EvenInformationP1, 100, 100, 'C');                       // Add text
    $pdf -> Cell(190, 10, $EvenInformationP2, 100, 100, 'C');                       // Add text
    $pdf -> Cell(190, 10, $EvenInformationP3, 100, 100, 'C');                       // Add text
  
    // ==============================================================================================
    //                                     DIRECTION INFORMATION
    // ==============================================================================================

    $Address = 'Av. Wilfrido Massieu s/n esq. Av. Instituto '. utf8_decode('Politécnico'). 'Nacional';
    $AddressP1 = 'en la Unidad Profesional Adolfo '. utf8_decode('López'). ' Mateos';
    $AddressP2 = 'Zacatenco, Ciudad de '. utf8_decode('México'). ', C.P 07738';
    $AddressP3 = ''.utf8_decode('Teléfono ').' 572960000';

    $pdf -> ln(4);                                                                   // Some lines       
    $pdf -> SetFont('Arial', 'B', 11);                                               // Font style
    $pdf -> Cell(190, 10, $Address, 100, 100, 'C');                                  // Add text
    $pdf -> Cell(190, 10, $AddressP1, 100, 100, 'C');                                // Add text
    $pdf -> Cell(190, 10, $AddressP2, 100, 100, 'C');                                // Add text
    $pdf -> Cell(190, 10, $AddressP3, 100, 100, 'C');                                // Add text

    // ==============================================================================================
    //                                         SEPARATION IMAGE
    // ==============================================================================================
    
    $pdf -> Image('../PdfTemplate/ImagesPdf/Invitation/Footer.PNG', 0, 175, 300, 10, 'PNG');        // Put an image
    
    // ==============================================================================================
    //                                         GUEST INFORMATION
    // ==============================================================================================
    
    $Guest = 'RFC: 2014171285';
//  $Guest = 'RFC: '.$rfc.'';
    //$rfc = 'GUMG560331'; //REMOVE THIS LINE WHEN RFC IS READY !!!!!
    $Place = 'Unidad '.utf8_decode('Académica ').': ESCOM - ESCUELA SUPERIOR DE COMPUTO';
//  $Place = 'Unidad '.utf8_decode('Académica ').': '.$School.;
    $pdf -> ln(25);                                                                 // Some lines
    $pdf -> SetFont('Arial', 'B', 11);                                               // Font style
    $pdf -> Cell(2);                                                                // Spaces
    $pdf -> Cell(190, 10, $Guest, 100, 100, 'L');                                    // Add text
    $pdf -> Cell(190, 10, $Place, 100, 100, 'L');                                    // Add text


    // ==============================================================================================
    //                                             QR AND BARCODE
    // ==============================================================================================

    barcode('./invitationsPDF/BAR'.$rfc.'.png', $rfc, 100, 'horizontal', 'code128', true);
    $pdf -> Image('./invitationsPDF//BAR'.$rfc.'.png', 20, 230, 80, 25, 'PNG');

    QRcode::png($rfc, 'invitationsPDF/QR'.$rfc.'.png'); 
    $pdf -> Image('./invitationsPDF//QR'.$rfc.'.png', 130, 210, 70, 70, 'PNG');
    
    $fileName = './invitationsPDF/'.$rfc.'.pdf';
    $pdf->Output($fileName, 'F');
    //$email = 'yngmeizhu@gmail.com';
    echo './invitationsPDF/'.$rfc.'.pdf';
    
    sendEmail($email, './invitationsPDF/'.$rfc.'.pdf', $rfc);

    //Delete images to save space
    unlink('./invitationsPDF/BAR'.$rfc.'.png');
    unlink('./invitationsPDF/QR'.$rfc.'.png');
?>
