<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <%
         try{
             UserDAO usr = new UserDAO();
             usr.excluir(Integer.parseInt(request.getParameter("userid")));
             response.sendRedirect("usuarios.jsp"); 
         }catch (Exception erro){
         throw new RuntimeException ("Erro 9:" + erro);       
                }          
        %>
        
    </body>
</html>
