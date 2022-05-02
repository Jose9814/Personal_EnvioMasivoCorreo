function init(){
    $("#usuario_form").on("submit",function(e){
        guardar(e);
   });
}

$(document).ready(function() {

});


function guardar(e){
    e.preventDefault();
    var formData = new FormData ($("#usuario_form")[0]);
    $.ajax({
        url: "controller/usuario.php?op=guardarcorreo",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data){
            $("#modalsuscribete").modal('hide');
            if(data==1){

                $.post("controller/usuario.php?op=enviarcorreobienvenida",{usu_correo : $('#usu_correo').val()},function(data){
                    
                });

                Swal.fire({
                    icon: 'success',
                    title: 'JosepCode',
                    text: 'Gracias por suscribirte',
                    showConfirmButton: false,
                    timer: 2000
                });

                $('#usu_correo').val('');
            }else{
                Swal.fire({
                    icon: 'error',
                    title: 'JosepCode',
                    text: '!Correo ya suscrito!',
                    showConfirmButton: false,
                    timer: 2000
                });

                //$("#usu_correo").val("");
            }
        }
    });
}

init();