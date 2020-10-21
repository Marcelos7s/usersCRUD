<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDAO"%>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>              
    
    </head>
    <body> 
      
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">    
        <h2 style="color: black"> Sistema simples de gestão de usuários </h2>
</nav>    
       
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
        <form action="usuarios.jsp" method="post">
<nav class="navbar navbar-light bg-light justify-content-between">
  <a class="navbar-brand">Pesquisa de usuários</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" name="name" placeholder="Search" aria-label="Search">
   
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
  </form>
</nav>      
        </form>    
        <%
          try{
              out.print("<table class='table'>");
              out.print("<tr>");
              out.print("<th>ID</th><th>Nome</th><th>Senha</th><th>Email</th><th>Telefone</th>");
              out.print("</tr>");
              UserDAO usr = new UserDAO();
              if (request.getParameter("name") == "" || request.getParameter("name") == null){
                  ArrayList<User> lista = usr.listarTodos();
                  for (int num =0; num <lista.size(); num++ ){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getUserid() +"</td>");  
                      out.print("<td>"+lista.get(num).getName() +"</td>");  
                      out.print("<td>"+lista.get(num).getSenha() +"</td>");  
                      out.print("<td>"+lista.get(num).getEmail() +"</td>");  
                      out.print("<td>"+lista.get(num).getTelefone() +"</td>");  

                      out.print("<td><a href='alterar.jsp?userid="+lista.get(num).getUserid() + "&name="+lista.get(num).getName() + "&senha=" +lista.get(num).getSenha()+ "&email=" +lista.get(num).getEmail()+ "&telefone=" +lista.get(num).getTelefone()+ " '>EDITAR</a></td>");
                      out.print("<td><a href='excluir.jsp?userid="+lista.get(num).getUserid() + "&name="+lista.get(num).getName() + " '>EXCLUIR</a></td>");
                      out.print("</tr>");
                  }
              } else {
              ArrayList<User> lista = usr.listarTodosName(request.getParameter("name"));
                  for (int num =0; num <lista.size(); num++ ){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getUserid() +"</td>");  
                      out.print("<td>"+lista.get(num).getName() +"</td>");  
                      out.print("<td>"+lista.get(num).getSenha() +"</td>");
                      out.print("<td>"+lista.get(num).getEmail() +"</td>");
                      out.print("<td>"+lista.get(num).getTelefone() +"</td>");
                      out.print("</tr>");   
                      
                      out.print("<tr>");                    
                      out.print("<td><a href='alterar.jsp?userid="+lista.get(num).getUserid() + "&name="+lista.get(num).getName() + "&senha" +lista.get(num).getSenha()+ "&email" +lista.get(num).getEmail()+ "&telefone" +lista.get(num).getTelefone()+ " '>EDITAR</a></td>");
                      out.print("<td><a href='excluir.jsp?userid="+lista.get(num).getUserid() + "&name="+lista.get(num).getName() + " '>EXCLUIR</a></td>");
                      out.print("</tr>");    
                  }
              }
              out.print("</table>");
          }catch(Exception erro){
           throw new RuntimeException("Erro 10: " + erro); 
        }  
          
        %>       
        <a href="inserir.jsp">ADICIONAR NOVO USUÁRIO</a>
  
    </body>
</html>
