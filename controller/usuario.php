<?php 
    /* LLamada a la cadena de conexion */
    require_once("../config/conexion.php");
    /* LLamando a la Clase */
    require_once("../models/Usuario.php");
    /* Inicializamos la Clase */
    $usuario = new Usuario();
    require_once("../models/Email.php");
    /* Inicializamos la Clase */
    $email = new Email();

    /* Opcion de solicitud del controller */
    switch($_GET["op"]){
         /* Servicio para guardar correo electronico */
        case "guardarcorreo":
            $datos = $usuario->get_correo($_POST["usu_correo"]);
            if(is_array($datos)==true and count($datos)==0){
                $usuario->insert_correo($_POST["usu_correo"]);
                echo 1;
            }else{
                echo 2;
            }
            break;
        case "enviarcorreobienvenida":
            $email->email_bienvenida($_POST["usu_correo"]);
            break;
    }
?>