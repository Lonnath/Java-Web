<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Abogado</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="container clase5">
            <form>

                <p class="text-center  ">Abogado.</p>
                <p >Datos de persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="labelAddress">Nombre</label>
                        <label type="text" class="form-control" id="nombreguardia"></label>

                    </div>
                    <div class ="form-group col-md-6">
                        <label for="labelAddress">Apellido</label>
                        <label type="text" class="form-control" id="apellidoguardia"></label>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulapersona">Cedula</label>
                        <label type="number" class="form-control" id="cedulaguardia"></label>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonopersona">Telefono</label>
                        <label type="number" class="form-control" id="telefonoguardia"></label>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainpersona">Email</label>
                        <label type="email" class="form-control" id="emailguardia"></label>
                    </div>
                    <div class="form-group col-md-5 ">
                        <label >Cedula Recluso</label>
                        <label type="number" class="form-control" id="cedularecluso"></label>
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="labelAddress">Fecha</label>
                        <label type="date" class="form-control" id="fechaabogado"></label>
                    </div>
                   
                </div>





                <a type="submit" href="abogados.jsp"  class="btn btn-primary form-control">Registrar</a>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
