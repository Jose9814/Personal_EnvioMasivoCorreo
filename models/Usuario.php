<?php 
    class Usuario extends Conectar{
        /* Insertar correo electronico en la base de datos */
        public function insert_correo($usu_correo){
            $conectar=parent::conexion();
            parent::set_names();
            $sql = "INSERT INTO tm_usuario (usu_correo,rol_id,fech_crea,est) VALUES (?,1,NOW(),1)";
            $sql = $conectar->prepare($sql);
            $sql->bindValue(1,$usu_correo);
            $sql->execute();
        }

        public function get_correo($usu_correo){
            $conectar=parent::conexion();
            parent::set_names();
            $sql = "SELECT * FROM tm_usuario WHERE usu_correo = ? AND est=1";
            $sql = $conectar->prepare($sql);
            $sql->bindValue(1,$usu_correo);
            $sql->execute();
            return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>