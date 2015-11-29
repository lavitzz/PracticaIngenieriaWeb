<%-- 
    Document   : NumUsuarios
    Created on : 27-nov-2015, 9:14:37
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Número de usuarios del sistema</title>
    </head>
    <body>
        <h1>Número de usuarios del sistema</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	ea.services.ServicesSoap_Service service = new ea.services.ServicesSoap_Service();
	ea.services.ServicesSoap port = service.getServicesSoapPort();
	// TODO process result here
	int result = port.getNumUsuarios();
	out.println("Usuarios = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    <a href="index.jsp">Volver</a>
    
    </body>
</html>
