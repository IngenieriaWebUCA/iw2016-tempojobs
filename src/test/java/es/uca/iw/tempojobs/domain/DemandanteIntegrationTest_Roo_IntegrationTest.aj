// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Demandante;
import es.uca.iw.tempojobs.domain.DemandanteDataOnDemand;
import es.uca.iw.tempojobs.domain.DemandanteIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DemandanteIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DemandanteIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DemandanteIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DemandanteIntegrationTest: @Transactional;
    
    @Autowired
    DemandanteDataOnDemand DemandanteIntegrationTest.dod;
    
    @Test
    public void DemandanteIntegrationTest.testCountDemandantes() {
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", dod.getRandomDemandante());
        long count = Demandante.countDemandantes();
        Assert.assertTrue("Counter for 'Demandante' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DemandanteIntegrationTest.testFindDemandante() {
        Demandante obj = dod.getRandomDemandante();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to provide an identifier", id);
        obj = Demandante.findDemandante(id);
        Assert.assertNotNull("Find method for 'Demandante' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Demandante' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DemandanteIntegrationTest.testFindAllDemandantes() {
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", dod.getRandomDemandante());
        long count = Demandante.countDemandantes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Demandante', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Demandante> result = Demandante.findAllDemandantes();
        Assert.assertNotNull("Find all method for 'Demandante' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Demandante' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DemandanteIntegrationTest.testFindDemandanteEntries() {
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", dod.getRandomDemandante());
        long count = Demandante.countDemandantes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Demandante> result = Demandante.findDemandanteEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Demandante' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Demandante' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DemandanteIntegrationTest.testFlush() {
        Demandante obj = dod.getRandomDemandante();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to provide an identifier", id);
        obj = Demandante.findDemandante(id);
        Assert.assertNotNull("Find method for 'Demandante' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDemandante(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Demandante' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DemandanteIntegrationTest.testMergeUpdate() {
        Demandante obj = dod.getRandomDemandante();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to provide an identifier", id);
        obj = Demandante.findDemandante(id);
        boolean modified =  dod.modifyDemandante(obj);
        Integer currentVersion = obj.getVersion();
        Demandante merged = (Demandante)obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Demandante' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DemandanteIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", dod.getRandomDemandante());
        Demandante obj = dod.getNewTransientDemandante(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Demandante' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Demandante' identifier to be null", obj.getId());
        try {
            obj.persist();
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'Demandante' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DemandanteIntegrationTest.testRemove() {
        Demandante obj = dod.getRandomDemandante();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Demandante' failed to provide an identifier", id);
        obj = Demandante.findDemandante(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Demandante' with identifier '" + id + "'", Demandante.findDemandante(id));
    }
    
}
