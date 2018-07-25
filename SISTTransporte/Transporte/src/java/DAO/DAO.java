package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DAO {
    private Connection cnt;
    
    public void Conexion(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cnt = DriverManager.getConnection("jdbc:sqlserver://192.168.8.121;1433,database=Transporte","hackaton","123");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error:" + e);
        }
        
    }
    public void cerrar()throws Exception{
       if(cnt != null){
           if(cnt.isClosed() == false){
               cnt.close();
           }
       } 
    }
    public static void main(String[] args) {
        DAO DAO = new DAO();
        DAO.Conexion();
        if(DAO.getCnt()!=null){
            System.err.println("Conectado");
        }else{
            System.err.println("Error en la Conexion");
        }
        
    
    }

    public Connection getCnt() {
        return cnt;
    }

    public void setCnt(Connection cnt) {
        this.cnt = cnt;
    }
}
