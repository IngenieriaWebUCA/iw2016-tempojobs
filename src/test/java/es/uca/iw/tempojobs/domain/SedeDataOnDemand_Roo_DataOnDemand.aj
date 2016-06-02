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
        setDireccion(obj, index);
        setLocalidad(obj, index);
        setNombre(obj, index);
        setPais(obj, index);
        setProvincia(obj, index);
        setTelefono(obj, index);
        return obj;
    }
    
    public void SedeDataOnDemand.setDireccion(Sede obj, int index) {
        String direccion = "direccion_" + index;
        if (direccion.length() > 128) {
            direccion = direccion.substring(0, 128);
        }
        obj.setDireccion(direccion);
    }
    
    public void SedeDataOnDemand.setLocalidad(Sede obj, int index) {
        String localidad = "localidad_" + index;
        if (localidad.length() > 64) {
            localidad = localidad.substring(0, 64);
        }
        obj.setLocalidad(localidad);
    }
    
    public void SedeDataOnDemand.setNombre(Sede obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 16) {
            nombre = nombre.substring(0, 16);
        }
        obj.setNombre(nombre);
    }
    
    public void SedeDataOnDemand.setPais(Sede obj, int index) {
        String pais = "pais_" + index;
        if (pais.length() > 32) {
            pais = pais.substring(0, 32);
        }
        obj.setPais(pais);
    }
    
    public void SedeDataOnDemand.setProvincia(Sede obj, int index) {
        String provincia = "provincia_" + index;
        if (provincia.length() > 16) {
            provincia = provincia.substring(0, 16);
        }
        obj.setProvincia(provincia);
    }
    
    public void SedeDataOnDemand.setTelefono(Sede obj, int index) {
        String telefono = "telefono_" + index;
        if (telefono.length() > 16) {
            telefono = telefono.substring(0, 16);
        }
        obj.setTelefono(telefono);
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
