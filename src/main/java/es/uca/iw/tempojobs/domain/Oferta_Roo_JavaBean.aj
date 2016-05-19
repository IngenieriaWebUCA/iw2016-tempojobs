// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Oferta;
import java.util.Date;
import java.util.Set;

privileged aspect Oferta_Roo_JavaBean {
    
    public String Oferta.getSTipoContrato() {
        return this.sTipoContrato;
    }
    
    public void Oferta.setSTipoContrato(String sTipoContrato) {
        this.sTipoContrato = sTipoContrato;
    }
    
    public Double Oferta.getDSueldoBruto() {
        return this.dSueldoBruto;
    }
    
    public void Oferta.setDSueldoBruto(Double dSueldoBruto) {
        this.dSueldoBruto = dSueldoBruto;
    }
    
    public Integer Oferta.getIVacantes() {
        return this.iVacantes;
    }
    
    public void Oferta.setIVacantes(Integer iVacantes) {
        this.iVacantes = iVacantes;
    }
    
    public String Oferta.getSFormacion() {
        return this.sFormacion;
    }
    
    public void Oferta.setSFormacion(String sFormacion) {
        this.sFormacion = sFormacion;
    }
    
    public String Oferta.getSExperiencia() {
        return this.sExperiencia;
    }
    
    public void Oferta.setSExperiencia(String sExperiencia) {
        this.sExperiencia = sExperiencia;
    }
    
    public String Oferta.getSEstado() {
        return this.sEstado;
    }
    
    public void Oferta.setSEstado(String sEstado) {
        this.sEstado = sEstado;
    }
    
    public Date Oferta.getFInicioActividad() {
        return this.fInicioActividad;
    }
    
    public void Oferta.setFInicioActividad(Date fInicioActividad) {
        this.fInicioActividad = fInicioActividad;
    }
    
    public Date Oferta.getFFechaInicio() {
        return this.fFechaInicio;
    }
    
    public void Oferta.setFFechaInicio(Date fFechaInicio) {
        this.fFechaInicio = fFechaInicio;
    }
    
    public Date Oferta.getFFechaFin() {
        return this.fFechaFin;
    }
    
    public void Oferta.setFFechaFin(Date fFechaFin) {
        this.fFechaFin = fFechaFin;
    }
    
    public Set<Inscripcion> Oferta.getInscripcion() {
        return this.inscripcion;
    }
    
    public void Oferta.setInscripcion(Set<Inscripcion> inscripcion) {
        this.inscripcion = inscripcion;
    }
    
}
