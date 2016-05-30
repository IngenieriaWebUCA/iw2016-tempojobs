// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Demandante;
import es.uca.iw.tempojobs.domain.DemandanteDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect DemandanteDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DemandanteDataOnDemand: @Component;
    
    private Random DemandanteDataOnDemand.rnd = new SecureRandom();
    
    private List<Demandante> DemandanteDataOnDemand.data;
    
    public Demandante DemandanteDataOnDemand.getNewTransientDemandante(int index) {
        Demandante obj = new Demandante();
        setApellidos(obj, index);
        setDireccion(obj, index);
        setEmail(obj, index);
        setFechaNac(obj, index);
        setLocalidad(obj, index);
        setNombre(obj, index);
        setProvincia(obj, index);
        setTelefono(obj, index);
        return obj;
    }
    
    public void DemandanteDataOnDemand.setApellidos(Demandante obj, int index) {
        String apellidos = "apellidos_" + index;
        if (apellidos.length() > 32) {
            apellidos = apellidos.substring(0, 32);
        }
        obj.setApellidos(apellidos);
    }
    
    public void DemandanteDataOnDemand.setDireccion(Demandante obj, int index) {
        String direccion = "direccion_" + index;
        if (direccion.length() > 128) {
            direccion = direccion.substring(0, 128);
        }
        obj.setDireccion(direccion);
    }
    
    public void DemandanteDataOnDemand.setEmail(Demandante obj, int index) {
        String email = "foo" + index + "@bar.com";
        if (email.length() > 64) {
            email = email.substring(0, 64);
        }
        obj.setEmail(email);
    }
    
    public void DemandanteDataOnDemand.setFechaNac(Demandante obj, int index) {
        Date fechaNac = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaNac(fechaNac);
    }
    
    public void DemandanteDataOnDemand.setLocalidad(Demandante obj, int index) {
        String localidad = "localidad_" + index;
        if (localidad.length() > 64) {
            localidad = localidad.substring(0, 64);
        }
        obj.setLocalidad(localidad);
    }
    
    public void DemandanteDataOnDemand.setNombre(Demandante obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 16) {
            nombre = nombre.substring(0, 16);
        }
        obj.setNombre(nombre);
    }
    
    public void DemandanteDataOnDemand.setProvincia(Demandante obj, int index) {
        String provincia = "provincia_" + index;
        if (provincia.length() > 16) {
            provincia = provincia.substring(0, 16);
        }
        obj.setProvincia(provincia);
    }
    
    public void DemandanteDataOnDemand.setTelefono(Demandante obj, int index) {
        String telefono = "telefono_" + index;
        if (telefono.length() > 16) {
            telefono = telefono.substring(0, 16);
        }
        obj.setTelefono(telefono);
    }
    
    public Demandante DemandanteDataOnDemand.getSpecificDemandante(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Demandante obj = data.get(index);
        Long id = obj.getId();
        return Demandante.findDemandante(id);
    }
    
    public Demandante DemandanteDataOnDemand.getRandomDemandante() {
        init();
        Demandante obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Demandante.findDemandante(id);
    }
    
    public boolean DemandanteDataOnDemand.modifyDemandante(Demandante obj) {
        return false;
    }
    
    public void DemandanteDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Demandante.findDemandanteEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Demandante' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Demandante>();
        for (int i = 0; i < 10; i++) {
            Demandante obj = getNewTransientDemandante(i);
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
