// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.AbstractUsuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AbstractUsuario_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AbstractUsuario.entityManager;
    
    public static final List<String> AbstractUsuario.fieldNames4OrderClauseFilter = java.util.Arrays.asList("apodo", "clave", "nombre", "apellidos", "fechaNac", "direccion", "localidad", "provincia", "email", "telefono");
    
    public static final EntityManager AbstractUsuario.entityManager() {
        EntityManager em = new AbstractUsuario() {
        }.entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AbstractUsuario.countAbstractUsuarios() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AbstractUsuario o", Long.class).getSingleResult();
    }
    
    public static List<AbstractUsuario> AbstractUsuario.findAllAbstractUsuarios() {
        return entityManager().createQuery("SELECT o FROM AbstractUsuario o", AbstractUsuario.class).getResultList();
    }
    
    public static List<AbstractUsuario> AbstractUsuario.findAllAbstractUsuarios(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AbstractUsuario o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AbstractUsuario.class).getResultList();
    }
    
    public static AbstractUsuario AbstractUsuario.findAbstractUsuario(Long id) {
        if (id == null) return null;
        return entityManager().find(AbstractUsuario.class, id);
    }
    
    public static List<AbstractUsuario> AbstractUsuario.findAbstractUsuarioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AbstractUsuario o", AbstractUsuario.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<AbstractUsuario> AbstractUsuario.findAbstractUsuarioEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AbstractUsuario o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AbstractUsuario.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AbstractUsuario.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AbstractUsuario.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AbstractUsuario attached = AbstractUsuario.findAbstractUsuario(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AbstractUsuario.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AbstractUsuario.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AbstractUsuario AbstractUsuario.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AbstractUsuario merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
