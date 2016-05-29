// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.impl.JPADeleteClause;
import com.mysema.query.jpa.impl.JPAQuery;
import com.mysema.query.types.path.PathBuilder;
import es.uca.iw.tempojobs.domain.Sede;
import es.uca.iw.tempojobs.domain.SedeBatchService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SedeBatchService_Roo_GvNIXJpaBatch {
    
    public Class SedeBatchService.getEntity() {
        return Sede.class;
    }
    
    public EntityManager SedeBatchService.entityManager() {
        return Sede.entityManager();
    }
    
    @Transactional
    public int SedeBatchService.deleteAll() {
        return entityManager().createQuery("DELETE FROM Sede").executeUpdate();
    }
    
    @Transactional
    public int SedeBatchService.deleteIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Sede as s WHERE s.id IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public int SedeBatchService.deleteNotIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Sede as s WHERE s.id NOT IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public void SedeBatchService.create(List<Sede> sedes) {
        for( Sede sede : sedes) {
            sede.persist();
        }
    }
    
    @Transactional
    public List<Sede> SedeBatchService.update(List<Sede> sedes) {
        List<Sede> merged = new ArrayList<Sede>();
        for( Sede sede : sedes) {
            merged.add( sede.merge() );
        }
        return merged;
    }
    
    public List<Sede> SedeBatchService.findByValues(Map<String, Object> propertyValues) {
        
        // if there is a filter
        if (propertyValues != null && !propertyValues.isEmpty()) {
            // Prepare a predicate
            BooleanBuilder baseFilterPredicate = new BooleanBuilder();
            
            // Base filter. Using BooleanBuilder, a cascading builder for
            // Predicate expressions
            PathBuilder<Sede> entity = new PathBuilder<Sede>(Sede.class, "entity");
            
            // Build base filter
            for (String key : propertyValues.keySet()) {
                baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
            }
            
            // Create a query with filter
            JPAQuery query = new JPAQuery(Sede.entityManager());
            query = query.from(entity);
            
            // execute query
            return query.where(baseFilterPredicate).list(entity);
        }
        
        // no filter: return all elements
        return Sede.findAllSedes();
    }
    
    @Transactional
    public long SedeBatchService.deleteByValues(Map<String, Object> propertyValues) {
        
        // if there no is a filter
        if (propertyValues == null || propertyValues.isEmpty()) {
            throw new IllegalArgumentException("Missing property values");
        }
        // Prepare a predicate
        BooleanBuilder baseFilterPredicate = new BooleanBuilder();
        
        // Base filter. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Sede> entity = new PathBuilder<Sede>(Sede.class, "entity");
        
        // Build base filter
        for (String key : propertyValues.keySet()) {
            baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
        }
        
        // Create a query with filter
        JPADeleteClause delete = new JPADeleteClause(Sede.entityManager(),entity);
        
        // execute delete
        return delete.where(baseFilterPredicate).execute();
    }
    
    @Transactional
    public void SedeBatchService.delete(List<Sede> sedes) {
        for( Sede sede : sedes) {
            sede.remove();
        }
    }
    
}
