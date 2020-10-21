<%@page import="model.UserLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users login</title>
        
    </head>
    <body>
        
<%UserLogin us = new UserLogin();
String email = request.getParameter("email");
String senha = request.getParameter("senha");
boolean status = us.verificarUsuario(email,senha);
  
if (us.result == true){
out.print("login ok para usuário" + us.name); 
response.sendRedirect("usuarios.jsp");     
} else {
response.sendRedirect("loginfail.jsp"); 


}

   %>     
    </body>
</html>

