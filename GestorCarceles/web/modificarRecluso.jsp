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
        <title>Modificar Recluso</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form >

                <p class="text-center  ">Modificar Recluso.</p>

                <p >Datos de persona</p>
                <div class="form-row container">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-5 " id="nombrepersona"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class ="form-group col-md-6 ">
                        <label for="inputAddress">Apellido</label>

                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="apellidopersona"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                <div class="form-row container ">
                    <div class="form-group col-md-6">
                        <label for="cedulapersona">Cedula</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="cedulapersona"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonopersona">Telefono</label>
                        <div class="row">
                            <input type="text" class="form-control col-md-9 " id="telefonopersona">

                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>

                </div>

                <div class="form-row container">
                    <div class="form-group col-md-6">
                        <label for="emainpersona">Email</label>
                        <div class="row">
                            <input type="text" class="form-control col-md-9 " id="emailpersona">

                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                        
                        <label for="direccionpersona">Direccion</label>
                        <div class="row">
                        <input type="text" class="form-control col-md-9" id="direccionpersona">
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        
                    </div>
                    </div>
                </div>
                <div class="form-row container">
                    <div class="form-group col-md-6">
                        <label for="telefonofamiliar">TelefonoFamiliar</label>
                        <div class="row">
                            <input type="text" class="form-control col-md-9 " id="telefonofamiliar">

                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="fechaingresopersona"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                <p >Datos de Sentencia</p>

                <div class="form-row container">
                    <div class="form-group">
                        <label >  Descripcion </label>

                        <div class="row">
                            <textarea class="form-control col-md-9 " id="descripcionsentencia" rows="5" ></textarea>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>
                <div class="form-row container">
                    <div class="form-group col-md-6">
                        <label >Tiempo Condena</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="tiempocondena"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6 ">
                        <label >Estado</label>

                        <div class="row">
                            <select class="custom-select col-md-6" id="estadosentencia">
                                <option selected>Choose...</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>

                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-7 " id="fechaingresosentencia"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6 ">
                       
                        <label >ID Pabellon</label>
                        <div class="row">
                        <select class="custom-select mr-sm-2" id="idpabellonrecluso">
                            <option selected>Choose...</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>

                        </select>
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div> 
                </div>
                <div class="form-group col-md-6 container ">
                    
                    <label >ID Celda</label>
                    <div class="row">
                    <select class="custom-select mr-sm-2" id="idceldarecluso">
                        <option selected>Choose...</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                     <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                    </div>
                </div>
                <a type="submit"  href="reclusos.jsp" class="btn btn-primary form-control">Modificar</a>

            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
