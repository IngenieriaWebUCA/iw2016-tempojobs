// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Sede;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Sede_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Sede.entityManager;
    
    public static final List<String> Sede.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "direccion", "localidad", "provincia", "pais", "telefono", "empresa");
    
    public static final EntityManager Sede.entityManager() {
        EntityManager em = new Sede().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Sede.countSedes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Sede o", Long.class).getSingleResult();
    }
    
    public static List<Sede> Sede.findAllSedes() {
        return entityManager().createQuery("SELECT o FROM Sede o", Sede.class).getResultList();
    }
    
    public static List<Sede> Sede.findAllSedes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sede o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sede.class).getResultList();
    }
    
    public static Sede Sede.findSede(Long id) {
        if (id == null) return null;
        return entityManager().find(Sede.class, id);
    }
    
    public static List<Sede> Sede.findSedeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Sede o", Sede.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Sede> Sede.findSedeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sede o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sede.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Sede.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Sede.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Sede attached = Sede.findSede(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Sede.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Sede.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Sede Sede.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Sede merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
