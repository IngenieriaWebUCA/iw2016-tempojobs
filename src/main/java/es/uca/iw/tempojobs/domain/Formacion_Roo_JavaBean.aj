// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Formacion;
import java.util.Date;

privileged aspect Formacion_Roo_JavaBean {
    
    public String Formacion.getSTitulo() {
        return this.sTitulo;
    }
    
    public void Formacion.setSTitulo(String sTitulo) {
        this.sTitulo = sTitulo;
    }
    
    public Date Formacion.getFFechaInicio() {
        return this.fFechaInicio;
    }
    
    public void Formacion.setFFechaInicio(Date fFechaInicio) {
        this.fFechaInicio = fFechaInicio;
    }
    
    public Date Formacion.getFFechaFinal() {
        return this.fFechaFinal;
    }
    
    public void Formacion.setFFechaFinal(Date fFechaFinal) {
        this.fFechaFinal = fFechaFinal;
    }
    
}
