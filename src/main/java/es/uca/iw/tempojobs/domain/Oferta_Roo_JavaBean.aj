// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empleado;
import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.Estado;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Oferta;
import java.util.Date;
import java.util.Set;

privileged aspect Oferta_Roo_JavaBean {
    
    public String Oferta.getTipoContrato() {
        return this.tipoContrato;
    }
    
    public void Oferta.setTipoContrato(String tipoContrato) {
        this.tipoContrato = tipoContrato;
    }
    
    public Double Oferta.getSueldoBruto() {
        return this.sueldoBruto;
    }
    
    public void Oferta.setSueldoBruto(Double sueldoBruto) {
        this.sueldoBruto = sueldoBruto;
    }
    
    public Integer Oferta.getVacantes() {
        return this.vacantes;
    }
    
    public void Oferta.setVacantes(Integer vacantes) {
        this.vacantes = vacantes;
    }
    
    public String Oferta.getFormacion() {
        return this.formacion;
    }
    
    public void Oferta.setFormacion(String formacion) {
        this.formacion = formacion;
    }
    
    public String Oferta.getExperiencia() {
        return this.experiencia;
    }
    
    public void Oferta.setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }
    
    public Date Oferta.getInicioActividad() {
        return this.inicioActividad;
    }
    
    public void Oferta.setInicioActividad(Date inicioActividad) {
        this.inicioActividad = inicioActividad;
    }
    
    public Date Oferta.getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void Oferta.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public Date Oferta.getFechaFin() {
        return this.fechaFin;
    }
    
    public void Oferta.setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }
    
    public Set<Inscripcion> Oferta.getInscripciones() {
        return this.inscripciones;
    }
    
    public void Oferta.setInscripciones(Set<Inscripcion> inscripciones) {
        this.inscripciones = inscripciones;
    }
    
    public Empresa Oferta.getEmpresa() {
        return this.empresa;
    }
    
    public void Oferta.setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }
    
    public Empleado Oferta.getEmpleado() {
        return this.empleado;
    }
    
    public void Oferta.setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    
    public Estado Oferta.getEstado() {
        return this.estado;
    }
    
    public void Oferta.setEstado(Estado estado) {
        this.estado = estado;
    }
    
}
