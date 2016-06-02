// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Estado;
import es.uca.iw.tempojobs.domain.EstadoDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect EstadoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: EstadoDataOnDemand: @Component;
    
    private Random EstadoDataOnDemand.rnd = new SecureRandom();
    
    private List<Estado> EstadoDataOnDemand.data;
    
    public Estado EstadoDataOnDemand.getNewTransientEstado(int index) {
        Estado obj = new Estado();
        setNombre(obj, index);
        return obj;
    }
    
    public void EstadoDataOnDemand.setNombre(Estado obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 16) {
            nombre = nombre.substring(0, 16);
        }
        obj.setNombre(nombre);
    }
    
    public Estado EstadoDataOnDemand.getSpecificEstado(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Estado obj = data.get(index);
        Long id = obj.getId();
        return Estado.findEstado(id);
    }
    
    public Estado EstadoDataOnDemand.getRandomEstado() {
        init();
        Estado obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Estado.findEstado(id);
    }
    
    public boolean EstadoDataOnDemand.modifyEstado(Estado obj) {
        return false;
    }
    
    public void EstadoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Estado.findEstadoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Estado' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Estado>();
        for (int i = 0; i < 10; i++) {
            Estado obj = getNewTransientEstado(i);
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
            data.add(obj);
        }
    }
    
}
