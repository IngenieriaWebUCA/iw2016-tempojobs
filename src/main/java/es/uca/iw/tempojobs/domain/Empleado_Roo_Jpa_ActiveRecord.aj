// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empleado;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Empleado_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Empleado.fieldNames4OrderClauseFilter = java.util.Arrays.asList("inicio");
    
    public static long Empleado.countEmpleadoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Empleado o", Long.class).getSingleResult();
    }
    
    public static List<Empleado> Empleado.findAllEmpleadoes() {
        return entityManager().createQuery("SELECT o FROM Empleado o", Empleado.class).getResultList();
    }
    
    public static List<Empleado> Empleado.findAllEmpleadoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Empleado o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Empleado.class).getResultList();
    }
    
    public static Empleado Empleado.findEmpleado(Long id) {
        if (id == null) return null;
        return entityManager().find(Empleado.class, id);
    }
    
    public static List<Empleado> Empleado.findEmpleadoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Empleado o", Empleado.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Empleado> Empleado.findEmpleadoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Empleado o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Empleado.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Empleado Empleado.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Empleado merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
