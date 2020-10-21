<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>              
        
        
    </head>
    <body>
      <nav class="navbar navbar-dark bg-primary">
        <h2 style="color: white">Adicionar usuário</h2>
</nav>          
        
        
        <%
        try{
        User use = new User();
        UserDAO usr = new UserDAO();
        if (request.getParameter("name").equals("")|| request.getParameter("senha").equals("") 
             || request.getParameter("email").equals("") || request.getParameter("telefone").equals("") ){
          response.sendRedirect("usuarios.jsp");  
        } else {
           use.setName(request.getParameter("name"));
           use.setSenha(request.getParameter("senha")); 
           use.setEmail(request.getParameter("email")); 
           use.setTelefone(request.getParameter("telefone")); 
           usr.inserir(use);
           response.sendRedirect("usuarios.jsp"); 
        }
        }catch (Exception erro){
         throw new RuntimeException ("Erro 7:" + erro);       
                }   
            
        %>
           
        
    </body>
</html>