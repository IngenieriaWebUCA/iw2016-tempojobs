// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Oferta;
import es.uca.iw.tempojobs.domain.Sede;
import java.util.Set;

privileged aspect Sede_Roo_JavaBean {
    
    public String Sede.getDireccion() {
        return this.direccion;
    }
    
    public void Sede.setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public String Sede.getLocalidad() {
        return this.localidad;
    }
    
    public void Sede.setLocalidad(String localidad) {
        this.localidad = localidad;
    }
    
    public String Sede.getProvincia() {
        return this.provincia;
    }
    
    public void Sede.setProvincia(String provincia) {
        this.provincia = provincia;
    }
    
    public String Sede.getPais() {
        return this.pais;
    }
    
    public void Sede.setPais(String pais) {
        this.pais = pais;
    }
    
    public String Sede.getTelefono() {
        return this.telefono;
    }
    
    public void Sede.setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public Set<Oferta> Sede.getOfertas() {
        return this.ofertas;
    }
    
    public void Sede.setOfertas(Set<Oferta> ofertas) {
        this.ofertas = ofertas;
    }
    
}
