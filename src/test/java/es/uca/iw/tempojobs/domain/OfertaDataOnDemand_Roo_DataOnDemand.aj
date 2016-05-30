// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.EmpresaDataOnDemand;
import es.uca.iw.tempojobs.domain.Oferta;
import es.uca.iw.tempojobs.domain.OfertaDataOnDemand;
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

privileged aspect OfertaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: OfertaDataOnDemand: @Component;
    
    private Random OfertaDataOnDemand.rnd = new SecureRandom();
    
    private List<Oferta> OfertaDataOnDemand.data;
    
    @Autowired
    EmpresaDataOnDemand OfertaDataOnDemand.empresaDataOnDemand;
    
    public Oferta OfertaDataOnDemand.getNewTransientOferta(int index) {
        Oferta obj = new Oferta();
        setEstado(obj, index);
        setExperiencia(obj, index);
        setFechaFin(obj, index);
        setFechaInicio(obj, index);
        setFormacion(obj, index);
        setInicioActividad(obj, index);
        setSueldoBruto(obj, index);
        setTipoContrato(obj, index);
        setVacantes(obj, index);
        return obj;
    }
    
    public void OfertaDataOnDemand.setEstado(Oferta obj, int index) {
        String estado = "estado_" + index;
        if (estado.length() > 16) {
            estado = estado.substring(0, 16);
        }
        obj.setEstado(estado);
    }
    
    public void OfertaDataOnDemand.setExperiencia(Oferta obj, int index) {
        String experiencia = "experiencia_" + index;
        if (experiencia.length() > 64) {
            experiencia = experiencia.substring(0, 64);
        }
        obj.setExperiencia(experiencia);
    }
    
    public void OfertaDataOnDemand.setFechaFin(Oferta obj, int index) {
        Date fechaFin = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaFin(fechaFin);
    }
    
    public void OfertaDataOnDemand.setFechaInicio(Oferta obj, int index) {
        Date fechaInicio = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFechaInicio(fechaInicio);
    }
    
    public void OfertaDataOnDemand.setFormacion(Oferta obj, int index) {
        String formacion = "formacion_" + index;
        if (formacion.length() > 256) {
            formacion = formacion.substring(0, 256);
        }
        obj.setFormacion(formacion);
    }
    
    public void OfertaDataOnDemand.setInicioActividad(Oferta obj, int index) {
        Date inicioActividad = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setInicioActividad(inicioActividad);
    }
    
    public void OfertaDataOnDemand.setSueldoBruto(Oferta obj, int index) {
        Double sueldoBruto = new Integer(index).doubleValue();
        obj.setSueldoBruto(sueldoBruto);
    }
    
    public void OfertaDataOnDemand.setTipoContrato(Oferta obj, int index) {
        String tipoContrato = "tipoContrato_" + index;
        if (tipoContrato.length() > 32) {
            tipoContrato = tipoContrato.substring(0, 32);
        }
        obj.setTipoContrato(tipoContrato);
    }
    
    public void OfertaDataOnDemand.setVacantes(Oferta obj, int index) {
        Integer vacantes = new Integer(index);
        obj.setVacantes(vacantes);
    }
    
    public Oferta OfertaDataOnDemand.getSpecificOferta(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Oferta obj = data.get(index);
        Long id = obj.getId();
        return Oferta.findOferta(id);
    }
    
    public Oferta OfertaDataOnDemand.getRandomOferta() {
        init();
        Oferta obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Oferta.findOferta(id);
    }
    
    public boolean OfertaDataOnDemand.modifyOferta(Oferta obj) {
        return false;
    }
    
    public void OfertaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Oferta.findOfertaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Oferta' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Oferta>();
        for (int i = 0; i < 10; i++) {
            Oferta obj = getNewTransientOferta(i);
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
