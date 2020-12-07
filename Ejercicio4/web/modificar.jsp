<%-- 
    Document   : agregarBando
    Created on : 1/12/2020, 09:11:37 AM
    Author     : Lonnath
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Bando"%>
<%@page import="ModeloDAO.BandoDAO"%>
<%@page import="ModeloDAO.PaisDAO"%>
<%@page import="Modelo.Pais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
        <script src="https://unpkg.com/feather-icons"></script>
        <script src="js/archivo.js"></script>
        <title>Document</title>
    </head>
    <body class="inter antialised">
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

        <form action="Control">
            <div class="px-8 mx-auto" style="width: 60%;">
                <p class="tracking-tight uppercase font-medium text-center">actualizar bando</p>

                <p class="mt-12">Información del país</p>
                <!-- Tabla -->
                <div class="flex flex-col mt-12" id="table">
                    <div class="-my-2 overflow-x-auto">
                        <div class="py-2 align-middle inline-block min-w-full">
                            <div class="shadow overflow-hidden border-b border-gray-200">
                                <table class="min-w-full divide-y divide-gray-200">
                                    <thead>
                                        <%
                                            Pais tmpo = new Pais();
                                            PaisDAO tmpo1 = new PaisDAO();
                                            tmpo = tmpo1.listP(Integer.parseInt((String) request.getAttribute("idPais")));
                                            BandoDAO tmpo2 = new BandoDAO();
                                            Bando tmpo3 = tmpo2.listB(tmpo.getId_bando());

                                        %>
                                        <tr>
                                            <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                ID
                                            </th>
                                            <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                nombre
                                            </th>
                                            <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                bando
                                            </th>
                                            <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                inicio periodo independencia    
                                            </th>
                                            <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                fin periodo independencia
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody class="bg-white divide-y divide-gray-200">
                                        <tr>
                                            <td class="px-6 py-4 whitespace-nowrap">
                                                <input type="text" name="id" value="<%= tmpo.getId_pais()%>" style="width: 40px" readonly>
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap">
                                                <%= tmpo.getNombre()%>
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap">
                                                <%= tmpo3.getNombre()%>
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm">
                                                <%= tmpo.getAnio_entrada()%>
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                                <%= tmpo.getAnio_salida()%>
                                            </td>
                                        </tr>

                                        <!-- More rows... -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>   
                <!-- ./ tabla-->

                <div class="flex items-end p-4 border shadow rounded justify-around mt-12">
                    <div class="flex flex-col" style="width: 50%;">
                        <p class="tracking-tight">Seleccione un bando</p>
                        <div class='relative mt-1'>
                            <select name='bandoSel' id="bandoSel" class='py-1 border border-gray-300 rounded-sm appearance-none pr-8 pl-3 w-full'>  
                                <%
                                    BandoDAO daoB = new BandoDAO();
                                    List<Bando> listB = daoB.listarBusquedaBandos(tmpo3.getId_guerra());
                                    Iterator<Bando> iterB = listB.iterator();
                                    Bando bando = null;
                                    while (iterB.hasNext()) {
                                        bando = iterB.next();
                                %>
                                
                                <option value="<%= bando.getId_bando()%>">
                                    <%= bando.getNombre()%> 
                                </option> 
                                <%
                                    }
                                %>
                            </select>
                            <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                            </div>
                        </div>
                    </div>
                            <button type="submit" class="px-4 py-1 bg-gray-50 font-medium border shadow rounded" name="accion" value="cambiarBandoPais">CAMBIAR BANDO</button>
                </div>
            </div>
        </form>

        <script>
            feather.replace()
        </script>
    </body>
</html>
