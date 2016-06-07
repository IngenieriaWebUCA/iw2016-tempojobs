// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.DemandanteDataOnDemand;
import es.uca.iw.tempojobs.domain.Formacion;
import es.uca.iw.tempojobs.domain.FormacionDataOnDemand;
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

privileged aspect FormacionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FormacionDataOnDemand: @Component;
    
    private Random FormacionDataOnDemand.rnd = new SecureRandom();
    
    private List<Formacion> FormacionDataOnDemand.data;
    
    @Autowired
    DemandanteDataOnDemand FormacionDataOnDemand.demandanteDataOnDemand;
    
    public Formacion FormacionDataOnDemand.getNewTransientFormacion(int index) {
        Formacion obj = new Formacion();
        setFechaFinal(obj, index);
        setFechaInicio(obj, index);
        setTitulo(obj, index);
        return obj;
    }
    
    public void FormacionDataOnDemand.setFechaFinal(Formacion obj, int index) {
        Date fechaFinal = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaFinal(fechaFinal);
    }
    
    public void FormacionDataOnDemand.setFechaInicio(Formacion obj, int index) {
        Date fechaInicio = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaInicio(fechaInicio);
    }
    
    public void FormacionDataOnDemand.setTitulo(Formacion obj, int index) {
        String titulo = "titulo_" + index;
        if (titulo.length() > 64) {
            titulo = titulo.substring(0, 64);
        }
        obj.setTitulo(titulo);
    }
    
    public Formacion FormacionDataOnDemand.getSpecificFormacion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Formacion obj = data.get(index);
        Long id = obj.getId();
        return Formacion.findFormacion(id);
    }
    
    public Formacion FormacionDataOnDemand.getRandomFormacion() {
        init();
        Formacion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Formacion.findFormacion(id);
    }
    
    public boolean FormacionDataOnDemand.modifyFormacion(Formacion obj) {
        return false;
    }
    
    public void FormacionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Formacion.findFormacionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Formacion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Formacion>();
        for (int i = 0; i < 10; i++) {
            Formacion obj = getNewTransientFormacion(i);
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
