<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Guardia</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form>

                <p class="text-center  ">Registro Guardia.</p>
                <p >Datos de persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <input type="text" class="form-control" id="nombreguardia">

                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                        <input type="text" class="form-control" id="apellidoguardia">
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulapersona">Cedula</label>
                        <input type="number" class="form-control" id="cedulaguardia">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonopersona">Telefono</label>
                        <input type="number" class="form-control" id="telefonoguardia">
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainpersona">Email</label>
                        <input type="email" class="form-control" id="emailguardia">
                    </div>
                    <div class="form-group col-md-2 ">
                        <label >Id Pabellon</label>
                        <input type="number" class="form-control" id="idpabellon">
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <input type="date" class="form-control" id="fechaingresoguardia">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Fin</label>
                        <input type="date" class="form-control" id="fechafinguardia">
                    </div>
                </div>





                <a type="submit" href="guardias.jsp"  class="btn btn-primary form-control">Registrar</a>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
