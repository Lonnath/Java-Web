
<%-- 
    Document   : index
    Created on : 30/11/2020, 11:12:42 PM
    Author     : Lonnath
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.*"%>
<%@page import="ModeloDAO.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styles.css">
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        <script src="https://unpkg.com/feather-icons"></script>
        <script src="js/archivo.js"></script>
        <title>Document</title>
    </head>
    <body class="inter antialiased" onload="showTables('btnPaises')">
        <div class="flex py-12 px-8 items-center">
            <a href="index.html" class="flex">
                <i data-feather="crosshair"></i>
                <p class="tracking-tighter ml-2 font-medium text-lg">G u e r r a s</p>
            </a>
        </div>

        <!-- title -->
        <div class="flex items-center pb-12 px-8 mx-auto justify-center">
            <hr style="width: 150px;">
            <p class="ml-4 text-xl tracking-tight font-semibold">GUERRAS DE LA HISTORIA</p>
            <hr style="width: 150px;" class="ml-4">
        </div>
        <!-- ./ title -->

        <!-- Primera sección -->
        <div class="flex flex-col pb-12 px-8 mx-auto" style="width: 80%;">
            <div class="flex justify-between">
                <div class="flex">
                    <button type="button" class="px-4 py-2 bg-gray-100 border shadow rounded" id="btnPaises" onclick="showTables(this.id)">Paises</button>
                    <button type="button" class="px-4 py-2 bg-gray-100 border shadow rounded ml-6" id="btnBandos" onclick="showTables(this.id)">Bandos</button>
                    <button type="button" class="px-4 py-2 bg-gray-100 border shadow rounded ml-6" id="btnGuerras" onclick="showTables(this.id)">Guerras</button></div>

                <div class="flex">
                    <button type="button" class="px-4 py-2 bg-black border shadow rounded ml-6 flex items-center" onclick="showDropdown()">
                        <p class="text-white">Agregar</p>
                        <i data-feather="plus" class="ml-2 text-white" style="width: 18px; height: 18px;"></i>
                    </button>
                </div>
            </div>

            <div class="w-full mt-3 hidden" id="dropdown">
            <div class="flex flex-col shadow border">
                    <a href="agregar.jsp?id=1" class="px-4 py-2 border-b">Guerra</a>
                    <a href="agregar.jsp?id=3" class="px-4 py-2 border-b">País</a>
                    <a href="agregar.jsp?id=2" class="px-4 py-2">Bando</a>
                </div>
            </div>
            
            <!--Tabla Guerra -->
            <div class="flex flex-col mt-12" id="tableGuerra">
                <div class="-my-2 overflow-x-auto">
                    <div class="py-2 align-middle inline-block min-w-full">
                        <div class="shadow overflow-hidden border-b border-gray-200">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead>
                                    <tr>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            ID
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            NOMBRE
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            AÑO INICIO
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            AÑO FIN
                                        </th>
                                    </tr>
                                </thead>

                                <%
                                    GuerraDAO daoG = new GuerraDAO();
                                    List<Guerra> listG = daoG.listarG();
                                    Iterator<Guerra> iterG = listG.iterator();
                                    Guerra guerra = null;
                                    while (iterG.hasNext()) {
                                        guerra = iterG.next();


                                %>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div class="flex-shrink-0">
                                                    <%= guerra.getId_guerra()%>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= guerra.getNombre()%></div>

                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= guerra.getAnio_inicio() %></div>

                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                                <%= guerra.getAnio_fin() %>
                                            </span>
                                        </td>
                                       
                                    </tr>
                                  
                                    <!-- More rows... -->
                                </tbody>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
                                        
            <!-- Tabla Bando-->
            </div><div class="flex flex-col mt-12" id="tableBando">
                <div class="-my-2 overflow-x-auto">
                    <div class="py-2 align-middle inline-block min-w-full">
                        <div class="shadow overflow-hidden border-b border-gray-200">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead>
                                    <tr>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            ID BANDO
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            GANADOR
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            NOMBRE
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            ID GUERRA
                                        </th>
                                    </tr>
                                </thead>

                                
                                <tbody class="bg-white divide-y divide-gray-200">
                                 <%
                                    BandoDAO daoB = new BandoDAO();
                                    List<Bando> listB = daoB.listarB();
                                    Iterator<Bando> iterB = listB.iterator();
                                    Bando bando = null;
                                    while (iterB.hasNext()) {
                                        bando = iterB.next();


                                %>   <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div class="flex-shrink-0">
                                                    <%= bando.getId_bando()%>
                                                </div>
                                            </div>
                                        </td>
                                        
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900">
                                                <%
                                                    if(bando.getGanador()==1){
                                                        %>
                                                        <%= "GANO"%>
                                                <%
                                                    }else%><%= "PERDIO"%>
                                                
                                            </div>

                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                                <%= bando.getNombre() %>
                                            </span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                            <%= bando.getId_guerra() %>
                                        </td>
                                        
                                    </tr>
                                  <%
                                    }
                                %>
                                    <!-- More rows... -->
                                </tbody>
                                
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Tabla Paises-->
            
            <div class="flex flex-col mt-12" id="tablePaises">
                <div class="-my-2 overflow-x-auto">
                    <div class="py-2 align-middle inline-block min-w-full">
                        <div class="shadow overflow-hidden border-b border-gray-200">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead>
                                    <tr>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            ID
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            NOMBRE
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            BANDO
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            AÑO ENTRADA
                                        </th>
                                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            AÑO SALIDA
                                        </th>
                                    </tr>
                                </thead>

                                <%
                                    PaisDAO dao = new PaisDAO();
                                    List<Pais> list = dao.listarP();
                                    Iterator<Pais> iter = list.iterator();
                                    Pais pais = null;
                                    
                                    while (iter.hasNext()) {
                                        pais = iter.next();
                                        
                                    BandoDAO tmpo = new BandoDAO();
                                    Bando tmpo1 = tmpo.listB(pais.getId_bando());

                                %>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div class="flex-shrink-0">
                                                    <%= pais.getId_pais()%>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= pais.getNombre()%></div>

                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= tmpo1.getNombre() %></div>

                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                                <%= pais.getAnio_salida()%>
                                            </span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                            <%= pais.getAnio_entrada()%>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="Control?accion=cambiarBando&id=<%= pais.getId_pais()%>" class="text-indigo-600 font-medium">Cambiar bando</a>
                                            <a href="Control?accion=eliminarPais&id=<%= pais.getId_pais()%>" class="ml-4 text-indigo-600 font-medium">Abandonar guerra</a>
                                        </td>
                                    </tr>
                                    
                                    <!-- More rows... -->
                                </tbody>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>   
            <!-- ./ tabla-->
            
        </div>
        <!-- ./ 1ra sección -->

        <script>
            feather.replace()
        </script>
    </body>
</html>