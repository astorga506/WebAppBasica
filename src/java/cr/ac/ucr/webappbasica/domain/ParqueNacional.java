/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cr.ac.ucr.webappbasica.domain;

/**
 *
 * @author Equipo
 */
public class ParqueNacional {
    
    private int idParque;
    private String nombreParque;

    public ParqueNacional() {
    }

    public ParqueNacional(int idParque, String nombreParque) {
        this.idParque = idParque;
        this.nombreParque = nombreParque;
    }

    public int getIdParque() {
        return idParque;
    }

    public void setIdParque(int idParque) {
        this.idParque = idParque;
    }

    public String getNombreParque() {
        return nombreParque;
    }

    public void setNombreParque(String nombreParque) {
        this.nombreParque = nombreParque;
    }
    
}
