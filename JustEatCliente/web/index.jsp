<%-- 
    Document   : index
    Created on : 27-nov-2015, 19:02:19
    Author     : David
--%>

<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SERVICIOS</title>
    </head>
    <body>
        <h1>Servicios comida a domicilio</h1>
        <div>
            <a href="NumUsuarios.jsp">Consultar número de usuarios del sistema</a>
            <br>
            <a href="Top5Menus.jsp">TOP 5 de Menús</a>
            <br>
            <a href="Top5Clientes.jsp">TOP 5 de Clientes</a>
            <br>
            <a href="Top10Restaurantes.jsp">TOP 10 de Restaurantes</a>
            <br>
            <form action="UserByCP.jsp" method="post">
        Número de usuarios por código postal:
        
            <select name="codPostal">
               
            <%-- start web service invocation --%>
    <%
    try {
	ea.services.ServicesSoap_Service service = new ea.services.ServicesSoap_Service();
	ea.services.ServicesSoap port = service.getServicesSoapPort();
	// TODO process result here
	java.util.List<java.lang.String> result = port.getDistintosCodPostales();
	//out.println("Result = "+result);
        Iterator it = result.iterator();
        while(it.hasNext()){
            Object o = it.next();
            out.println("<option value='"+o+"'>"+o+"</option>");
        }
         
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
        </select>
       <input type="submit" value="Buscar">
        </form>
    </div>
    </body>
</html>
