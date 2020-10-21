<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
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
        User use = new User();
        UserDAO usr = new UserDAO();
        if (request.getParameter("name").equals("")|| request.getParameter("senha").equals("")
           || request.getParameter("email").equals("") || request.getParameter("telefone").equals("")  ){
          response.sendRedirect("usuarios.jsp");  
        } else {
           use.setName(request.getParameter("name"));
           use.setSenha(request.getParameter("senha")); 
           use.setEmail(request.getParameter("email")); 
           use.setTelefone(request.getParameter("telefone")); 
           use.setUserid(Integer.parseInt(request.getParameter("userid")));
           usr.alterar(use);
           response.sendRedirect("usuarios.jsp"); 
        }
        }catch (Exception erro){
         throw new RuntimeException ("Erro 8:" + erro);       
                }   
            
        %>
           
        
    </body>
</html>
