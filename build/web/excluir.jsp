<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 <h2 style="color: white">Confirma exclusão do usuário abaixo?</h2>
</nav>      
        
          <nav class="navbar navbar-light bg-light">
          <span class="navbar-text">   
        <form action="executa_excluir.jsp" method="post">
            <label>ID de usuário:</label><br/>
            <input type="text" name="userid" value="<%=request.getParameter("userid")%>" /><br/> 
            
            <label>Nome:</label><br/>
            <input type="text" name="name" value="<%=request.getParameter("name")%>" /><br/>
   
            </span>
            </nav>
                    
        <button class="btn btn-primary" type="submit">Excluir</button>   
        </form>
        
        
    </body>
</html>
