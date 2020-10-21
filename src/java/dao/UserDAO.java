package dao;
import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {
    
 private Connection conn;
 private PreparedStatement stmt;
 private Statement st;
 private ResultSet rs;
 private ArrayList<User> lista = new ArrayList<>();
 
public UserDAO(){
    conn = new ConnectionFactory().getConexao();
    
}    
  
public void inserir(User user) {
 String sql = "INSERT INTO users (name, senha, telefone, email) VALUES (?,?,?,?)";
 try{
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, user.getName());
 stmt.setString(2, user.getSenha());
 stmt.setString(3, user.getTelefone());
 stmt.setString(4, user.getEmail());
 stmt.execute();
 stmt.close();
 }catch(Exception erro){
 throw new RuntimeException("Erro 2: " + erro);       
 }
}

public void alterar(User user) {
 String sql = "UPDATE users SET name = ?, senha = ?, telefone = ?, email =? WHERE userid = ?";
 try{
 stmt = conn.prepareStatement(sql);    
 stmt.setString(1, user.getName());
 stmt.setString(2, user.getSenha());
 stmt.setString(3, user.getTelefone());
 stmt.setString(4, user.getEmail()); 
 stmt.setInt(5, user.getUserid());
 stmt.execute();
 stmt.close();
 }catch(Exception erro){
 throw new RuntimeException("Erro 3: " + erro);       
 }
}

public void excluir(int valor) {
 String sql = "DELETE FROM users WHERE userid = " +valor;
 try{
     st = conn.createStatement();
     st.execute(sql);
     st.close();
 }catch(Exception erro){
 throw new RuntimeException("Erro 4: " + erro);       
 }
}


public ArrayList<User> listarTodos(){
    String sql = "SELECT * FROM users";
    try{
       st = conn.createStatement();
       rs = st.executeQuery(sql);
       while (rs.next()){
           User user = new User();
           user.setUserid(rs.getInt("userid"));
           user.setName(rs.getString("name"));
           user.setSenha(rs.getString("senha"));
           user.setEmail(rs.getString("email"));
           user.setTelefone(rs.getString("telefone"));
           lista.add(user);
       }
    } catch (Exception erro) {
    throw new RuntimeException ("Erro 5" + erro);    
    }
    return lista;
}


public ArrayList<User> listarTodosName(String valor){
    String sql = "SELECT * FROM users WHERE name LIKE '%"+valor+"%' ";
    try{
       st = conn.createStatement();
       rs = st.executeQuery(sql);
       while (rs.next()){
           User user = new User();
           user.setUserid(rs.getInt("userid"));
           user.setName(rs.getString("name"));
           user.setSenha(rs.getString("senha"));
           user.setEmail(rs.getString("email"));
           user.setTelefone(rs.getString("telefone"));
           lista.add(user);
       }
    } catch (Exception erro) {
    throw new RuntimeException ("Erro 5" + erro);    
    }
    return lista;
}


}
