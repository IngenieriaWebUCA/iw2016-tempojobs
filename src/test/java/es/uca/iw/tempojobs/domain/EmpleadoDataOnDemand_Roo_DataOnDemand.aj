// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empleado;
import es.uca.iw.tempojobs.domain.EmpleadoDataOnDemand;
import es.uca.iw.tempojobs.domain.OfertaDataOnDemand;
import es.uca.iw.tempojobs.domain.PuestoDataOnDemand;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect EmpleadoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: EmpleadoDataOnDemand: @Component;
    
    private Random EmpleadoDataOnDemand.rnd = new SecureRandom();
    
    private List<Empleado> EmpleadoDataOnDemand.data;
    
    @Autowired
    OfertaDataOnDemand EmpleadoDataOnDemand.ofertaDataOnDemand;
    
    @Autowired
    PuestoDataOnDemand EmpleadoDataOnDemand.puestoDataOnDemand;
    
    public Empleado EmpleadoDataOnDemand.getNewTransientEmpleado(int index) {
        Empleado obj = new Empleado();
        setApellidos(obj, index);
        setApodo(obj, index);
        setClave(obj, index);
        setDireccion(obj, index);
        setEmail(obj, index);
        setFechaFinal(obj, index);
        setFechaInicio(obj, index);
        setFechaNac(obj, index);
        setLocalidad(obj, index);
        setNombre(obj, index);
        setProvincia(obj, index);
        setTelefono(obj, index);
        return obj;
    }
    
    public void EmpleadoDataOnDemand.setApellidos(Empleado obj, int index) {
        String apellidos = "apellidos_" + index;
        if (apellidos.length() > 32) {
            apellidos = apellidos.substring(0, 32);
        }
        obj.setApellidos(apellidos);
    }
    
    public void EmpleadoDataOnDemand.setApodo(Empleado obj, int index) {
        String apodo = "apodo_" + index;
        if (apodo.length() > 16) {
            apodo = new Random().nextInt(10) + apodo.substring(1, 16);
        }
        obj.setApodo(apodo);
    }
    
    public void EmpleadoDataOnDemand.setClave(Empleado obj, int index) {
        String clave = "clavex_" + index;
        if (clave.length() > 16) {
            clave = clave.substring(0, 16);
        }
        obj.setClave(clave);
    }
    
    public void EmpleadoDataOnDemand.setDireccion(Empleado obj, int index) {
        String direccion = "direccion_" + index;
        if (direccion.length() > 128) {
            direccion = direccion.substring(0, 128);
        }
        obj.setDireccion(direccion);
    }
    
    public void EmpleadoDataOnDemand.setEmail(Empleado obj, int index) {
        String email = "foo" + index + "@bar.com";
        if (email.length() > 64) {
            email = email.substring(0, 64);
        }
        obj.setEmail(email);
    }
    
    public void EmpleadoDataOnDemand.setFechaFinal(Empleado obj, int index) {
        Date fechaFinal = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaFinal(fechaFinal);
    }
    
    public void EmpleadoDataOnDemand.setFechaInicio(Empleado obj, int index) {
        Date fechaInicio = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaInicio(fechaInicio);
    }
    
    public void EmpleadoDataOnDemand.setFechaNac(Empleado obj, int index) {
        Date fechaNac = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaNac(fechaNac);
    }
    
    public void EmpleadoDataOnDemand.setLocalidad(Empleado obj, int index) {
        String localidad = "localidad_" + index;
        if (localidad.length() > 64) {
            localidad = localidad.substring(0, 64);
        }
        obj.setLocalidad(localidad);
    }
    
    public void EmpleadoDataOnDemand.setNombre(Empleado obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 16) {
            nombre = nombre.substring(0, 16);
        }
        obj.setNombre(nombre);
    }
    
    public void EmpleadoDataOnDemand.setProvincia(Empleado obj, int index) {
        String provincia = "provincia_" + index;
        if (provincia.length() > 16) {
            provincia = provincia.substring(0, 16);
        }
        obj.setProvincia(provincia);
    }
    
    public void EmpleadoDataOnDemand.setTelefono(Empleado obj, int index) {
        String telefono = "telefono_" + index;
        if (telefono.length() > 16) {
            telefono = telefono.substring(0, 16);
        }
        obj.setTelefono(telefono);
    }
    
    public Empleado EmpleadoDataOnDemand.getSpecificEmpleado(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Empleado obj = data.get(index);
        Long id = obj.getId();
        return Empleado.findEmpleado(id);
    }
    
    public Empleado EmpleadoDataOnDemand.getRandomEmpleado() {
        init();
        Empleado obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Empleado.findEmpleado(id);
    }
    
    public boolean EmpleadoDataOnDemand.modifyEmpleado(Empleado obj) {
        return false;
    }
    
    public void EmpleadoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Empleado.findEmpleadoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Empleado' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Empleado>();
        for (int i = 0; i < 10; i++) {
            Empleado obj = getNewTransientEmpleado(i);
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
