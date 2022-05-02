<?php 
    require('class.phpmailer.php');
    require('class.smtp.php');

    require_once("../config/conexion.php");
    require_once("../models/Usuario.php");

    class Email extends PHPMailer{

        protected $gcorreo = 'eglez863@gmail.com'; //Correo del que se envia el Email
        protected $gpass = 'Jose9814'; //Contraseña del correo del que se envia el Email

        public function email_bienvenida($usu_correo){
            //Igual
            $this->IsSMTP();
            $this->Host = 'smtp.gmail.com'; //Host del servidor SMTP
            $this->Port = 587; //Puerto del servidor SMTP
            $this->SMTPAuth = true; //Autenticacion del servidor SMTP
            $this->Username = $this->gcorreo; //Correo del que se envia el Email
            $this->Password = $this->gpass; //Contraseña del correo del que se envia el Email
            $this->From = $this->gcorreo; //Correo del que se envia el Email
            $this->SMTPSecure = 'tls'; //Tipo de seguridad del servidor SMTP
            $this->FromName = "JosepHenry"; //Nombre del que se envia el Email
            $this->CharSet = 'UTF-8'; //Codificacion de caracteres

            //Igual
            $this->addAddress($usu_correo); //Correo al que se envia el Email
            $this->WordWrap = 50; //Ancho del texto
            $this->isHTML(true); //Formato HTML
            $this->Subject = 'Felicitaciones, Bienvenido!'; //Asunto del Email
            //Igual
            $cuerpo = file_get_contents('../public/plantillas/Template_Bienvenida.html');
            /*Parametros del Template a Reemplazar */
            $cuerpo = str_replace('$NAME', $usu_correo, $cuerpo);

            $this->Body = $cuerpo; //Cuerpo del Email
            $this->AltBody = strip_tags('Descuentos'); //Cuerpo del Email en Texto Plano
            return $this->send(); //Envio del Email
        }

    }
?>