<%-- 
    Document   : UserByCP
    Created on : 28-nov-2015, 19:51:54
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Número de usuarios por CP</title>
    </head>
    <body>
        <h1>Número de usuarios con el código postal: <% out.println(request.getParameter("codPostal")); %> </h1>
        
            <%-- start web service invocation --%><hr/>
    <%
    try {
	ea.services.ServicesSoap_Service service = new ea.services.ServicesSoap_Service();
	ea.services.ServicesSoap port = service.getServicesSoapPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cp = request.getParameter("codPostal");
	// TODO process result here
	int result = port.getUsuariosbyCP(cp);
	out.println("Usuarios = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <a href="index.jsp">Volver</a>
    </body>
</html>
