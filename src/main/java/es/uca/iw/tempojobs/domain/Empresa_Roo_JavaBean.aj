// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.Sede;
import java.util.Set;

privileged aspect Empresa_Roo_JavaBean {
    
    public String Empresa.getSTitulo() {
        return this.sTitulo;
    }
    
    public void Empresa.setSTitulo(String sTitulo) {
        this.sTitulo = sTitulo;
    }
    
    public String Empresa.getSCIF() {
        return this.sCIF;
    }
    
    public void Empresa.setSCIF(String sCIF) {
        this.sCIF = sCIF;
    }
    
    public String Empresa.getSActividadProfesional() {
        return this.sActividadProfesional;
    }
    
    public void Empresa.setSActividadProfesional(String sActividadProfesional) {
        this.sActividadProfesional = sActividadProfesional;
    }
    
    public Integer Empresa.getIEmpleados() {
        return this.iEmpleados;
    }
    
    public void Empresa.setIEmpleados(Integer iEmpleados) {
        this.iEmpleados = iEmpleados;
    }
    
    public Set<Sede> Empresa.getSedes() {
        return this.sedes;
    }
    
    public void Empresa.setSedes(Set<Sede> sedes) {
        this.sedes = sedes;
    }
    
}
