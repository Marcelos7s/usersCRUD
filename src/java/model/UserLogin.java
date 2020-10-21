package model;

import dao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserLogin {
 
 private Connection conn;
 private PreparedStatement stmt;
 private Statement st;
 private ResultSet rs;
 
public UserLogin(){
    conn = new ConnectionFactory().getConexao();    
} 
 public String name = "";
 public boolean result = false;
 public boolean verificarUsuario(String email, String senha) {
 String sql = "";
 sql += "select name from users ";
 sql += "where email = " + "'" + email + "'";
 sql += "and senha = " + "'" + senha + "'";
 try{
 //stmt = conn.prepareStatement(sql);
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    if (rs.next()){
        result = true;
        name = rs.getString("name");
    }
 }  catch(Exception erro){
 throw new RuntimeException("Erro 11: " + erro); 
 }
 return result;

  
 }  
}
    
