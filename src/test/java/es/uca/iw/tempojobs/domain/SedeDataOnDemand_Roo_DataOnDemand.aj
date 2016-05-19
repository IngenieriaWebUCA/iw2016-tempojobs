// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Sede;
import es.uca.iw.tempojobs.domain.SedeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect SedeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SedeDataOnDemand: @Component;
    
    private Random SedeDataOnDemand.rnd = new SecureRandom();
    
    private List<Sede> SedeDataOnDemand.data;
    
    public Sede SedeDataOnDemand.getNewTransientSede(int index) {
        Sede obj = new Sede();
        setSDireccion(obj, index);
        setSLocalidad(obj, index);
        setSPais(obj, index);
        setSProvincia(obj, index);
        setSTelefono(obj, index);
        return obj;
    }
    
    public void SedeDataOnDemand.setSDireccion(Sede obj, int index) {
        String sDireccion = "sDireccion_" + index;
        if (sDireccion.length() > 128) {
            sDireccion = sDireccion.substring(0, 128);
        }
        obj.setSDireccion(sDireccion);
    }
    
    public void SedeDataOnDemand.setSLocalidad(Sede obj, int index) {
        String sLocalidad = "sLocalidad_" + index;
        if (sLocalidad.length() > 64) {
            sLocalidad = sLocalidad.substring(0, 64);
        }
        obj.setSLocalidad(sLocalidad);
    }
    
    public void SedeDataOnDemand.setSPais(Sede obj, int index) {
        String sPais = "sPais_" + index;
        if (sPais.length() > 32) {
            sPais = sPais.substring(0, 32);
        }
        obj.setSPais(sPais);
    }
    
    public void SedeDataOnDemand.setSProvincia(Sede obj, int index) {
        String sProvincia = "sProvincia_" + index;
        if (sProvincia.length() > 32) {
            sProvincia = sProvincia.substring(0, 32);
        }
        obj.setSProvincia(sProvincia);
    }
    
    public void SedeDataOnDemand.setSTelefono(Sede obj, int index) {
        String sTelefono = "sTelefono_" + index;
        if (sTelefono.length() > 16) {
            sTelefono = sTelefono.substring(0, 16);
        }
        obj.setSTelefono(sTelefono);
    }
    
    public Sede SedeDataOnDemand.getSpecificSede(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Sede obj = data.get(index);
        Long id = obj.getId();
        return Sede.findSede(id);
    }
    
    public Sede SedeDataOnDemand.getRandomSede() {
        init();
        Sede obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Sede.findSede(id);
    }
    
    public boolean SedeDataOnDemand.modifySede(Sede obj) {
        return false;
    }
    
    public void SedeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Sede.findSedeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Sede' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Sede>();
        for (int i = 0; i < 10; i++) {
            Sede obj = getNewTransientSede(i);
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
