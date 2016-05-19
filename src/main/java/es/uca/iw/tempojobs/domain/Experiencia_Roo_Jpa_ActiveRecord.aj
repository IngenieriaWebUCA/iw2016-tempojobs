// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Experiencia;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Experiencia_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Experiencia.entityManager;
    
    public static final List<String> Experiencia.fieldNames4OrderClauseFilter = java.util.Arrays.asList("sEmpresa", "sPuesto", "fFechaInicio", "fFechaFinal");
    
    public static final EntityManager Experiencia.entityManager() {
        EntityManager em = new Experiencia().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Experiencia.countExperiencias() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Experiencia o", Long.class).getSingleResult();
    }
    
    public static List<Experiencia> Experiencia.findAllExperiencias() {
        return entityManager().createQuery("SELECT o FROM Experiencia o", Experiencia.class).getResultList();
    }
    
    public static List<Experiencia> Experiencia.findAllExperiencias(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Experiencia o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Experiencia.class).getResultList();
    }
    
    public static Experiencia Experiencia.findExperiencia(Long id) {
        if (id == null) return null;
        return entityManager().find(Experiencia.class, id);
    }
    
    public static List<Experiencia> Experiencia.findExperienciaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Experiencia o", Experiencia.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Experiencia> Experiencia.findExperienciaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Experiencia o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Experiencia.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Experiencia.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Experiencia.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Experiencia attached = Experiencia.findExperiencia(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Experiencia.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Experiencia.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Experiencia Experiencia.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Experiencia merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
