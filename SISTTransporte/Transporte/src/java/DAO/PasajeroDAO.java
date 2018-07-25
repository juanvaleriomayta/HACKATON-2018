package DAO;

import interfaces.PasajeroI;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Pasajero;


public class PasajeroDAO extends DAO implements PasajeroI{
    
    @Override
    public void agregar(Pasajero pas)throws Exception{
        try {
            this.Conexion();
            String sql ="EXEC sp_Pasajero (?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = this.getCnt().prepareStatement(sql);
            pst.setString(1, pas.getNombreP());
            pst.setString(2, pas.getApellidoP());
            pst.setString(3, pas.getRazonSocialP());
            pst.setString(4, pas.getRucP());
            pst.setString(5, pas.getTipoDocuP());
            pst.setString(6, pas.getNumeroDocuP());
            pst.setString(7, pas.getOrigenP());
            pst.setString(8, pas.getEdadP());
            pst.setString(9, pas.getDestinoP());
            pst.executeUpdate();
            
        } catch (SQLException e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }
    
    @Override
    public List<Pasajero> listar(Pasajero pas)throws Exception{
        List<Pasajero> lista;
        ResultSet rs;
        try {
            this.Conexion();
            String sql="SELECT * FROM LIST_PASAJEROS";
            PreparedStatement pst = this.getCnt().prepareStatement(sql);
            rs = pst.executeQuery();
            lista = new ArrayList();
            while (rs.next()) {
            pas = new Pasajero();
            pas.setIdPasajero(rs.getInt("idPasajero"));
            pas.setNombreP(rs.getString("nomPasajero"));
            pas.setApellidoP(rs.getString("apePasajero"));
            pas.setRazonSocialP(rs.getString("razsPasajero"));
            pas.setRucP(rs.getString("rucPasajero"));
            pas.setTipoDocuP(rs.getString("tipDocuPasajero"));
            pas.setNumeroDocuP(rs.getString("numDocu"));
            pas.setOrigenP(rs.getString("origenPasajero"));
            pas.setEdadP(rs.getString("edadPasajero"));
            pas.setDestinoP(rs.getString("destinoPasajero"));
            lista.add(pas);
            }
        } catch (SQLException e) {
            throw e;
        }finally{
            this.cerrar();
        }
        return lista;
    }
    
    @Override
    public Pasajero leerID(Pasajero pas)throws Exception{
        Pasajero pasaj=null;
        ResultSet rs;
        try {
            this.Conexion();
            String sql="SELECT idPasajero,nomPasajero,apePasajero,razsPasajero,rucPasajero,tipDocuPasajero,numDocu,origenPasajero,edadPasajero,destinoPasajero FROM Pasajero WHERE idPasajero";
            PreparedStatement pst = this.getCnt().prepareStatement(sql);
            pst.setInt(1, pas.getIdPasajero());
            rs = pst.executeQuery();
            while(rs.next()){
                pasaj = new Pasajero();
                pasaj.setIdPasajero(rs.getInt("idPasajero"));
                pasaj.setNombreP(rs.getString("nomPasajero"));
                pasaj.setNombreP(rs.getString("apePasajero"));
                pasaj.setNombreP(rs.getString("razsPasajero"));
                pasaj.setNombreP(rs.getString("rucPasajero"));
                pasaj.setNombreP(rs.getString("tipDocuPasajero"));
                pasaj.setNombreP(rs.getString("numDocu"));
                pasaj.setNombreP(rs.getString("origenPasajero"));
                pasaj.setNombreP(rs.getString("edadPasajero"));
                pasaj.setNombreP(rs.getString("destinoPasajero"));
            }
        } catch (SQLException e) {
        }finally{
            this.Conexion();
        }
        return pasaj;
    }
    public void actualizar (Pasajero pas) throws Exception{
        try {
            this.Conexion();
            String sql ="UPDATE Pasajero SET nomPasajero =?,apePasajero=?,razsPasajero=?,rucPasajero=?,tipDocuPasajero=?,numDocu=?,origenPasajero=?,edadPasajero=?,destinoPasajero=? WHERE idPasajero=?";
            PreparedStatement pst = this.getCnt().prepareStatement(sql);
            pst.setInt(1, pas.getIdPasajero());
            pst.setString(2, pas.getNombreP());
            pst.setString(3, pas.getNombreP());
            pst.setString(4, pas.getNombreP());
            pst.setString(5, pas.getNombreP());
            pst.setString(6, pas.getNombreP());
            pst.setString(7, pas.getNombreP());
            pst.setString(8, pas.getNombreP());
            pst.setString(9, pas.getNombreP());
        } catch (SQLException e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }
    @Override
    public void eliminar(Pasajero pas)throws Exception{
        try {
            this.Conexion();
            String sql="delete fron Pasajero where idPasajero=?";
            PreparedStatement pst = this.getCnt().prepareStatement(sql);
            pst.setInt(1, pas.getIdPasajero());
        } catch (SQLException e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }
}
