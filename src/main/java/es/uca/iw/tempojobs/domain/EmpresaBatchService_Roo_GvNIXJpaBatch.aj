// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.impl.JPADeleteClause;
import com.mysema.query.jpa.impl.JPAQuery;
import com.mysema.query.types.path.PathBuilder;
import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.EmpresaBatchService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EmpresaBatchService_Roo_GvNIXJpaBatch {
    
    public Class EmpresaBatchService.getEntity() {
        return Empresa.class;
    }
    
    public EntityManager EmpresaBatchService.entityManager() {
        return Empresa.entityManager();
    }
    
    @Transactional
    public int EmpresaBatchService.deleteAll() {
        return entityManager().createQuery("DELETE FROM Empresa").executeUpdate();
    }
    
    @Transactional
    public int EmpresaBatchService.deleteIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Empresa as e WHERE e.id IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public int EmpresaBatchService.deleteNotIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Empresa as e WHERE e.id NOT IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public void EmpresaBatchService.create(List<Empresa> empresas) {
        for( Empresa empresa : empresas) {
            empresa.persist();
        }
    }
    
    @Transactional
    public List<Empresa> EmpresaBatchService.update(List<Empresa> empresas) {
        List<Empresa> merged = new ArrayList<Empresa>();
        for( Empresa empresa : empresas) {
            merged.add( empresa.merge() );
        }
        return merged;
    }
    
    public List<Empresa> EmpresaBatchService.findByValues(Map<String, Object> propertyValues) {
        
        // if there is a filter
        if (propertyValues != null && !propertyValues.isEmpty()) {
            // Prepare a predicate
            BooleanBuilder baseFilterPredicate = new BooleanBuilder();
            
            // Base filter. Using BooleanBuilder, a cascading builder for
            // Predicate expressions
            PathBuilder<Empresa> entity = new PathBuilder<Empresa>(Empresa.class, "entity");
            
            // Build base filter
            for (String key : propertyValues.keySet()) {
                baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
            }
            
            // Create a query with filter
            JPAQuery query = new JPAQuery(Empresa.entityManager());
            query = query.from(entity);
            
            // execute query
            return query.where(baseFilterPredicate).list(entity);
        }
        
        // no filter: return all elements
        return Empresa.findAllEmpresas();
    }
    
    @Transactional
    public long EmpresaBatchService.deleteByValues(Map<String, Object> propertyValues) {
        
        // if there no is a filter
        if (propertyValues == null || propertyValues.isEmpty()) {
            throw new IllegalArgumentException("Missing property values");
        }
        // Prepare a predicate
        BooleanBuilder baseFilterPredicate = new BooleanBuilder();
        
        // Base filter. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Empresa> entity = new PathBuilder<Empresa>(Empresa.class, "entity");
        
        // Build base filter
        for (String key : propertyValues.keySet()) {
            baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
        }
        
        // Create a query with filter
        JPADeleteClause delete = new JPADeleteClause(Empresa.entityManager(),entity);
        
        // execute delete
        return delete.where(baseFilterPredicate).execute();
    }
    
    @Transactional
    public void EmpresaBatchService.delete(List<Empresa> empresas) {
        for( Empresa empresa : empresas) {
            empresa.remove();
        }
    }
    
}
