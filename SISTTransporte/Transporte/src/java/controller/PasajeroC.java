package controller;

import DAO.PasajeroDAO;
import java.io.Serializable;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import model.Pasajero;

@ManagedBean
@SessionScoped
public class PasajeroC implements Serializable {

    private Pasajero pasajeroM = new Pasajero();
    private List<Pasajero> lstPasajero;
    private String accion;

    public void operar() throws Exception {
        switch (accion) {
            case "Agregar":
                this.agregar();
                break;
            case "Actualizar":
                this.actualizar();
                break;
        }
    }

    public void limpiar() throws Exception {
        pasajeroM = new Pasajero();

    }

    public void agregar() throws Exception {
        PasajeroDAO DAO;
        try {
            DAO = new PasajeroDAO();
            DAO.agregar(pasajeroM);
            this.listar();
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Registrado"));
        } catch (Exception e) {
            throw e;
        }
    }

    public void listar() throws Exception {
        PasajeroDAO DAO;
        try {
            DAO = new PasajeroDAO();
            lstPasajero = DAO.listar(pasajeroM);
        } catch (Exception e) {
            throw e;
        }
    }

    public void leerID(Pasajero pas) throws Exception {
        PasajeroDAO DAO;
        Pasajero temp = null;

        try {
            DAO = new PasajeroDAO();
            DAO.leerID(pas);
            if (temp != null) {

                this.pasajeroM = temp;
                this.accion = "Actualizar";

            }

        } catch (Exception e) {
            throw e;
        }
    }

    public void actualizar() throws Exception {
        PasajeroDAO DAO;
        try {
            DAO = new PasajeroDAO();
            DAO.actualizar(pasajeroM);
            this.listar();
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Modifico"));
        } catch (Exception e) {
            throw e;
        }
    }

    public void eliminar(Pasajero pas) throws Exception {
        PasajeroDAO DAO;
        try {
            DAO = new PasajeroDAO();
            DAO.eliminar(pas);
            this.listar();
        } catch (Exception e) {
            throw e;
        }
    }

    //getter and setter
    public Pasajero getPasajeroM() {
        return pasajeroM;
    }

    public void setPasajeroM(Pasajero pasajeroM) {
        this.pasajeroM = pasajeroM;
    }

    public List<Pasajero> getLstPasajero() {
        return lstPasajero;
    }

    public void setLstPasajero(List<Pasajero> lstPasajero) {
        this.lstPasajero = lstPasajero;
    }

    public String getAccion() throws Exception {
        this.limpiar();
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }
}
