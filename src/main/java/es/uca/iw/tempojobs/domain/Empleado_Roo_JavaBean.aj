// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empleado;
import es.uca.iw.tempojobs.domain.Oferta;
import java.util.Date;

privileged aspect Empleado_Roo_JavaBean {
    
    public Date Empleado.getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void Empleado.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public Date Empleado.getFechaFinal() {
        return this.fechaFinal;
    }
    
    public void Empleado.setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    
    public String Empleado.getPuesto() {
        return this.puesto;
    }
    
    public void Empleado.setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    public Oferta Empleado.getOferta() {
        return this.oferta;
    }
    
    public void Empleado.setOferta(Oferta oferta) {
        this.oferta = oferta;
    }
    
}
