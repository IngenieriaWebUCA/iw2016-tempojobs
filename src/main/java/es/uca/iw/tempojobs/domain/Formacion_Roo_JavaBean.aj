// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Formacion;
import java.util.Date;

privileged aspect Formacion_Roo_JavaBean {
    
    public String Formacion.getTitulo() {
        return this.titulo;
    }
    
    public void Formacion.setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    public Date Formacion.getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void Formacion.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public Date Formacion.getFechaFinal() {
        return this.fechaFinal;
    }
    
    public void Formacion.setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    
}
