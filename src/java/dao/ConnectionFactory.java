package dao;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
 public Connection getConexao(){
     try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      return DriverManager.getConnection("jdbc:mysql://localhost:3306/userscrudschema?autoReconnect=true&useSSL=false?autoReconnect=true&useSSL=false", "root", "1234");       
     }catch (Exception erro){
      throw new RuntimeException("Erro 1: " + erro);   
     }
 }      
}
