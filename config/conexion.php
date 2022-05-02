<?php 
    /* Iniciamos Clase Conectar */
    class Conectar{
        protected $dbh;
        /* Funcion protegida de la Cadena Conexion */
        protected function conexion(){
            try{
                $conectar = $this->dbh = new PDO("mysql:host=localhost;dbname=joseh_masivocorreos","root","");
                return $conectar;
            }catch(Exception $e){
                /* En caso hubiera un error en la cadena de conexion */
                print "Error!: " . $e->getMessage() . "<br/>";
                die();
            }
        }
        /* Para impedir que tengamos problemas con las ñ o las tildes */
        public function set_names(){
            return $this->conexion()->query("SET NAMES 'utf8'");
        }
        /* Ruta principal del proyecto */
        public static function ruta(){
            return "http://localhost/Personal_EnvioMasivoCorreo/";
        }
    }
?>