package interfaces;

import java.util.List;
import model.Pasajero;

public interface PasajeroI {
    public void agregar(Pasajero pas)throws Exception; //este metodo permite ingresar los datos del pasajero
    
    public List<Pasajero> listar(Pasajero pas)throws Exception;//permite listra los datos del pasajero
    
    public Pasajero leerID(Pasajero pas)throws Exception;//permite leer el codigodel pasajero
    
    public void actualizar (Pasajero pas) throws Exception;//permite modificar o actualizar los datos del pasajero
    
    public void eliminar(Pasajero pas)throws Exception;//permite eliminar los datos del pasajero
}
