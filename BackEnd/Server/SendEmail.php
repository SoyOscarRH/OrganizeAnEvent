<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    
    //Load files
    require './PHPMailer/src/Exception.php';
    require './PHPMailer/src/PHPMailer.php';
    require './PHPMailer/src/SMTP.php';

    /**
     * Send a message, file, etc. via email
     *
     * @param string $email The email of the guest
     * @param string $path The path of the attachment to send
     * @param string $fileName The name of the attached file that we want to show to the receiver
     * @return 
     */

    function sendEmail($email, $path, $fileName)
    {
        //Configuration for Gmail accounts
        $mail = new PHPMailer(true);                                // Passing `true` enables exceptions
        try {
            $email = 'enriquebroly@gmail.com';                      // Guest account
            //Server settings
            $mail->isSMTP();                                        // Set mailer to use SMTP
            $mail->Host = 'smtp.gmail.com';                         // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                                 // Enable SMTP authentication
            $mail->Username = 'OrganizeAnEvent@gmail.com';          // SMTP username (test account)
            $mail->Password = 'rootroot';                           // SMTP password (test account)
            $mail->SMTPSecure = 'tls';                              // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                      // TCP port to connect to

            //Recipients
            $mail->From = "OrganizeAnEvent@gmail.com";      // Sender
            $mail->FromName = "Organize An Event";          // Sender name
            $mail->addAddress($email);                      // Receiver

            //Attachments
            $mail->addAttachment($path, $fileName);    // Optional name

            //Content
            $mail->isHTML(true);                            // Set email format to HTML
            $mail->Subject = 'Invitación Distinción al Mérito Politécnico\n';

            $Text = 'El Instituto '. utf8_decode('Politécnico'). ' Nacional se honra en invitarle a la\n';
            $Text  = $Text.'Ceremonia de reconocimiento al '. utf8_decode('Mérito Politécnico').'.\n\n';

            $Text  = $Text .'Ceremonia que se realizara el '. utf8_decode('día').' 30 de Marzo a las 10:15 horas\n' ;
            $Text  = $Text .'en el Auditorio B "Manuel Moreno Torres" del\n';
            $Text  = $Text .'Centro Cultural Jaime Torres Bodet\n';
            $Text  = $Text .'el cual se encuentra ubicado en:\n\n';

            $Text  = $Text .'Av. Wilfrido Massieu s/n esq. Av. Instituto '. utf8_decode('Politécnico'). 'Nacional\n';
            $Text  = $Text .'en la Unidad Profesional Adolfo '. utf8_decode('López'). ' Mateos\n';
            $Text  = $Text .'Zacatenco, Ciudad de '. utf8_decode('México'). ', C.P 07738\n';
            $Text  = $Text .''.utf8_decode('Teléfono ').' 572960000\n';

            $mail->Body = $Text;

            $mail->send();
            echo 'Message has been sent';
        } 
        catch (Exception $e) {
            echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        }
    }
    //sendEmail('enriquebroly@gmail.com', '.\Template\ImagesPdf\Invitation\HEADER.PNG', 'Invitacion IPN');
?>