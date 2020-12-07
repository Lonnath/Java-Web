

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Guardia</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form>

                <p class="text-center  ">Registro Recluso.</p>
                <p >Datos de guardia</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <label type="text" class="form-control" id="nombreguardia">JUAN DAVID</label>
                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                        <label type="text" class="form-control" id="nombreguardia">PEREZ PEREZ</label>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulaguardia">Cedula</label>
                        <label type="number" class="form-control" id="cedulaguardia">1010127648</label>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonoguardia">Telefono</label>
                        <label type="number" class="form-control" id="telefonoguardia">315845714</label>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainguardia">Email</label>
                        <label type="email" class="form-control" id="emailguardia">prueba@gamail.com</label>
                    </div>
                    <div class="form-group col-md-2 ">
                        <label >Id Pabellon</label>
                        <label type="number" class="form-control" id="idpabellon"></label>
                    </div>
                </div>
                <div class="form-row">
                   
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <label type="date" class="form-control" id="fechaingresoguardia">2020/01/22</label>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Fin</label>
                        <label type="date" class="form-control" id="fechafinguardia">2020/01/22</label>
                    </div>
                </div>

                 

                <a type="submit" href="guardias.jsp" class="btn btn-primary">Finalizar</a>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>