
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
   
     <nav class="navbar navbar-light" style="background-color: #e3f2fd;">    
        <h2 style="color: black"> Confirma as credenciais abaixo? </h2>
</nav>        
              <form action="executa_login.jsp" method="post"> 
                  
                 <nav class="navbar navbar-light bg-light">
                <span class="navbar-text">                      
                  
             <label>Email</label><br/>
            <input type="text" name="email" value="<%=request.getParameter("email")%>" /><br/>    
                  
            <label>Senha:</label><br/>
            <input type="text" name="senha" value="<%=request.getParameter("senha")%>" /><br/>
               
                        </span>
                </nav>
 
 <button class="btn btn-primary" type="submit">Sim, realizar login</button>              
                </form>

    </body>
</html>
