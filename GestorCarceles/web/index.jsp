<%-- 
    Document   : index
    Created on : Dec 4, 2020, 4:16:14 PM
    Author     : USUARIO
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" lang="es">
        <title>Login</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="container loginBox">

            <div class="loginTitle text-white">
                Login
            </div>
            <form action="inicioDeSesion" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1" class="text-white">Correo</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="text-white ">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1 " name="password">
                </div>

                <button type="submit">Iniciar</button>
            </form>

        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
