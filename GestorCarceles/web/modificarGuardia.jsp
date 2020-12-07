<%-- 
    Document   : formulario
    Created on : Dec 4, 2020, 5:42:46 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Guardia</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form >

                <p class="text-center  ">Modificar Guarida.</p>
                
                <p >Datos de Persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="nombreguardia"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                    
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="apellidoguardia"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulaguardia">Cedula</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="cedulaguardia"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonoguardia">Telefono</label>
                         <div class="row">
                        <input type="text" class="form-control col-md-9 " id="telefonoguardia">
           
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainguardia">Email</label>
                         <div class="row">
                        <input type="text" class="form-control col-md-9 " id="emailguardia">
           
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                                            <div class="form-group col-md-2 ">
                        <label >Id Pabellon</label>
                        <input type="number" class="form-control" id="idpabellon">
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                    </div>
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="fechaingresoguardia"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Fin</label>
                        <div class="row">
                            <input type="date" class="form-control col-md-9 " id="fechafinguardia">
           
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                

                <a type="submit"  href="guardias.jsp" class="btn btn-primary form-control">Modificar</a>
                    
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
