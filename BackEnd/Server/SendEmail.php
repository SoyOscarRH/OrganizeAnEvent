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
            $mail->Subject = 'Order 66';
            $mail->Body = 'Execute order 66.';

            $mail->send();
            echo 'Message has been sent';
        } 
        catch (Exception $e) {
            echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        }
    }
    //sendEmail('enriquebroly@gmail.com', '.\Template\ImagesPdf\Invitation\HEADER.PNG', 'Invitacion IPN');
?>