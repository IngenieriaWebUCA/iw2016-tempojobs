// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Demandante;
import es.uca.iw.tempojobs.domain.Experiencia;
import java.util.Date;

privileged aspect Experiencia_Roo_JavaBean {
    
    public String Experiencia.getEmpresa() {
        return this.empresa;
    }
    
    public void Experiencia.setEmpresa(String empresa) {
        this.empresa = empresa;
    }
    
    public String Experiencia.getPuesto() {
        return this.puesto;
    }
    
    public void Experiencia.setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    public Date Experiencia.getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void Experiencia.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public Date Experiencia.getFechaFinal() {
        return this.fechaFinal;
    }
    
    public void Experiencia.setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    
    public Demandante Experiencia.getDemandante() {
        return this.demandante;
    }
    
    public void Experiencia.setDemandante(Demandante demandante) {
        this.demandante = demandante;
    }
    
}
