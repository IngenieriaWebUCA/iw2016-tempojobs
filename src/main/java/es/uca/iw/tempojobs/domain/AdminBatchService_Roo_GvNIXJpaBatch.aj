// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.impl.JPADeleteClause;
import com.mysema.query.jpa.impl.JPAQuery;
import com.mysema.query.types.path.PathBuilder;
import es.uca.iw.tempojobs.domain.Admin;
import es.uca.iw.tempojobs.domain.AdminBatchService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AdminBatchService_Roo_GvNIXJpaBatch {
    
    public Class AdminBatchService.getEntity() {
        return Admin.class;
    }
    
    public EntityManager AdminBatchService.entityManager() {
        return Admin.entityManager();
    }
    
    @Transactional
    public int AdminBatchService.deleteAll() {
        return entityManager().createQuery("DELETE FROM Admin").executeUpdate();
    }
    
    @Transactional
    public int AdminBatchService.deleteIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Admin as a WHERE a.id IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public int AdminBatchService.deleteNotIn(List<Long> ids) {
        Query query = entityManager().createQuery("DELETE FROM Admin as a WHERE a.id NOT IN (:idList)");
        query.setParameter("idList", ids);
        return query.executeUpdate();
    }
    
    @Transactional
    public void AdminBatchService.create(List<Admin> admins) {
        for( Admin admin : admins) {
            admin.persist();
        }
    }
    
    @Transactional
    public List<Admin> AdminBatchService.update(List<Admin> admins) {
        List<Admin> merged = new ArrayList<Admin>();
        for( Admin admin : admins) {
            merged.add( admin.merge() );
        }
        return merged;
    }
    
    public List<Admin> AdminBatchService.findByValues(Map<String, Object> propertyValues) {
        
        // if there is a filter
        if (propertyValues != null && !propertyValues.isEmpty()) {
            // Prepare a predicate
            BooleanBuilder baseFilterPredicate = new BooleanBuilder();
            
            // Base filter. Using BooleanBuilder, a cascading builder for
            // Predicate expressions
            PathBuilder<Admin> entity = new PathBuilder<Admin>(Admin.class, "entity");
            
            // Build base filter
            for (String key : propertyValues.keySet()) {
                baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
            }
            
            // Create a query with filter
            JPAQuery query = new JPAQuery(Admin.entityManager());
            query = query.from(entity);
            
            // execute query
            return query.where(baseFilterPredicate).list(entity);
        }
        
        // no filter: return all elements
        return Admin.findAllAdmins();
    }
    
    @Transactional
    public long AdminBatchService.deleteByValues(Map<String, Object> propertyValues) {
        
        // if there no is a filter
        if (propertyValues == null || propertyValues.isEmpty()) {
            throw new IllegalArgumentException("Missing property values");
        }
        // Prepare a predicate
        BooleanBuilder baseFilterPredicate = new BooleanBuilder();
        
        // Base filter. Using BooleanBuilder, a cascading builder for
        // Predicate expressions
        PathBuilder<Admin> entity = new PathBuilder<Admin>(Admin.class, "entity");
        
        // Build base filter
        for (String key : propertyValues.keySet()) {
            baseFilterPredicate.and(entity.get(key).eq(propertyValues.get(key)));
        }
        
        // Create a query with filter
        JPADeleteClause delete = new JPADeleteClause(Admin.entityManager(),entity);
        
        // execute delete
        return delete.where(baseFilterPredicate).execute();
    }
    
    @Transactional
    public void AdminBatchService.delete(List<Admin> admins) {
        for( Admin admin : admins) {
            admin.remove();
        }
    }
    
}
