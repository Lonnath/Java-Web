<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
    <body onload="showSection()">
        <!-- Primera sección -->
        <div class="flex flex-col py-12 px-8 mx-auto" style="width: 50%;">
            <form action="Control">
                <div class="border shadow rounded px-4 pt-4 pb-4 hidden" id="firstSection">
                    <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registrar Guerras</p>
                    <div class="flex w-full justify-between items-center">
                        <div style="width: 45%;">
                            <p class="tracking-tight">Nombre de la guerra</p>
                            <input type="text" placeholder="Ingrese el nombre ..." class="px-2 py-1 mt-1 border border-gray-300 truncate rounded-sm w-full" name="nomGuerra" id="nomGuerra" required>
                        </div>

                        <div class="flex items-center" style="width: 45%;">
                            <div class="flex flex-col" style="width: 50%;">
                                <p class="tracking-tight">Año de inicio</p>
                                <input type="number" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="0" name="desde" id="desde">
                            </div>

                            <div class="flex flex-col ml-4" style="width: 50%;">
                                <p class="tracking-tight">Año de culminación</p>
                                <input type="number" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="0" name="hasta" id="hasta">
                            </div>
                        </div>
                    </div>

                    <div class="flex mt-6 mx-auto" style="width: 33.33%;">
                        <button type="submit" class="px-4 py-2 shadow border tracking-tight bg-gray-100 w-full rounded font-medium" name="accion" value="agregarGuerra">Añadir</button>
                    </div>
                </div>
            </form>

            <form action="Control">
                <div class="border shadow rounded mt-12 px-4 pt-4 pb-4 hidden" id="secondSection">
                    <p class="tracking-tight uppercase font-semibold text-lg">Registrar Bandos</p>
                    <div class="mt-3 flex items-center justify-between">
                        <div style="width: 45%;" class="flex flex-col">

                            <p class="tracking-tight">Guerra a la cual desea agregar el bando</p>
                            
                            <div class='relative mt-1'>
                                <select name='guerraSelect' id="guerraSelect" class='py-1 border border-gray-300 rounded-sm appearance-none pr-8 pl-3 w-full'>
                                    <option value="no">Sin Seleccionar</option>
                                    <%
                                            GuerraDAO daoG = new GuerraDAO();
                                            List<Guerra> listG = daoG.listarG();
                                            Iterator<Guerra> iterG = listG.iterator();
                                            Guerra guerra = null;
                                            while (iterG.hasNext()) {
                                                guerra = iterG.next();
                                                %>
                                       <option value="<%= guerra.getId_guerra()%>">
                                              <%= guerra.getNombre() %> 
                                           
                                    </option> <%}
                                        %>
                                </select>
                                <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                    <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                </div>
                            </div> 
                                <p class="mt-4">GANADOR</p>
                                <div class='relative mt-1'>
                            <select name='ganadorSelect' id="guerraSelect" class='py-1 border border-gray-300 rounded-sm appearance-none pr-8 pl-3 w-full'>
                                <option value='si'>Si</option>
                                <option value='no'>No</option>
                            </select>
                            <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                            </div>
                        </div>




                        </div>

                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Nombre del bando</p>
                            <input type="text" name="nomBando" id="nomBando" placeholder="Ingrese el nombre ..." class="truncate px-2 border border-gray-300 rounded-sm py-1 mt-1">
                        </div>
                    </div>

                    <div class="flex mt-6 mx-auto" style="width: 33.33%;">
                        <button type="submit" class="px-4 py-2 shadow border tracking-tight bg-gray-100 w-full rounded font-medium " name="accion" value="agregarBando">Añadir</button>
                    </div>
                </div>
            </form>

            <form action="Control">
                <div class="border shadow rounded mt-12 px-4 pt-4 pb-4 hidden" id="thirdSection">
                    <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registro de países</p>
                    <div class="flex flex-col w-full">
                        <div class="flex w-full justify-between items-center">
                            <div style="width: 40%;">
                                <p class="tracking-tight">Países contendientes</p>
                                <input type="text" placeholder="Ingrese un país" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded-sm w-full" name="nomPaises" id="nomPaises">
                            </div>

                            <div style="width: 40%;">
                                <p class="tracking-tight">¿Pertenece a un bando?</p>
                                <div class='relative mt-1'>
                                    <select name='bandosSelect' id="bandosSelect" class='py-1 border border-gray-300 rounded-sm appearance-none pr-8 pl-3 w-full'>
                                        <option value="no">Sin Seleccionar</option>
                                    <%
                                            BandoDAO daoB = new BandoDAO();
                                            List<Bando> listB = daoB.listarB();
                                            Iterator<Bando> iterB = listB.iterator();
                                            Bando bando = null;
                                            while (iterB.hasNext()) {
                                                bando = iterB.next();
                                                %>
                                       <option value="<%=bando.getId_bando()%>">
                                              <%= bando.getNombre() %> 
                                           
                                    </option> <%}
                                        %>
                                    </select>
                                    <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                        <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                    </div>
                                </div>                
                            </div>
                        </div>

                        <div class="flex w-full justify-between items-center mt-6">
                            <div style="width: 40%;">
                                <p class="tracking-tight">¿Es independiente?</p>
                                <div class='relative mt-1'>
                                    <select name='independenceSelect' id="independenceSelect" onchange="mostrarInputsPeriodosIndependencia()" class='py-1 border border-gray-300 rounded-sm appearance-none pr-8 pl-3 w-full'>
                                        <option value='no'>No</option>
                                        <option value='si'>Si</option>
                                    </select>
                                    <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                        <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                    </div>
                                </div>
                            </div>

                            <div class="hidden" id="showPeriodos" style="width: 40%;">
                                <div class="flex flex-col" style="width: 50%;">
                                    <p class="tracking-tight">Desde</p>
                                    <input type="number" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" name="desde" id="desde">
                                </div>

                                <div class="flex flex-col ml-4" style="width: 50%;">
                                    <p class="tracking-tight">Hasta</p>
                                    <input type="number" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" name="hasta" id="hasta">
                                </div>
                            </div>
                        </div>
                        <div class="flex mt-6 mx-auto" style="width: 33.33%;">
                            <button type="submit" class="px-4 py-2 shadow border tracking-tight bg-gray-100 w-full rounded font-medium" name="accion" value="agregarPais">Siguiente</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- ./ 1ra sección -->
    </body>
</html>