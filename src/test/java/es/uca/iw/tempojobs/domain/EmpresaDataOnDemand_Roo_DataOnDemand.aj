// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.EmpresaDataOnDemand;
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

privileged aspect EmpresaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: EmpresaDataOnDemand: @Component;
    
    private Random EmpresaDataOnDemand.rnd = new SecureRandom();
    
    private List<Empresa> EmpresaDataOnDemand.data;
    
    public Empresa EmpresaDataOnDemand.getNewTransientEmpresa(int index) {
        Empresa obj = new Empresa();
        setFFechaNac(obj, index);
        setIEmpleados(obj, index);
        setSActividadProfesional(obj, index);
        setSApellidos(obj, index);
        setSCIF(obj, index);
        setSDireccion(obj, index);
        setSEmail(obj, index);
        setSNombre(obj, index);
        setSPassword(obj, index);
        setSTelefono(obj, index);
        setSTitulo(obj, index);
        return obj;
    }
    
    public void EmpresaDataOnDemand.setFFechaNac(Empresa obj, int index) {
        Date fFechaNac = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFFechaNac(fFechaNac);
    }
    
    public void EmpresaDataOnDemand.setIEmpleados(Empresa obj, int index) {
        Integer iEmpleados = new Integer(index);
        obj.setIEmpleados(iEmpleados);
    }
    
    public void EmpresaDataOnDemand.setSActividadProfesional(Empresa obj, int index) {
        String sActividadProfesional = "sActividadProfesional_" + index;
        if (sActividadProfesional.length() > 64) {
            sActividadProfesional = sActividadProfesional.substring(0, 64);
        }
        obj.setSActividadProfesional(sActividadProfesional);
    }
    
    public void EmpresaDataOnDemand.setSApellidos(Empresa obj, int index) {
        String sApellidos = "sApellidos_" + index;
        if (sApellidos.length() > 64) {
            sApellidos = sApellidos.substring(0, 64);
        }
        obj.setSApellidos(sApellidos);
    }
    
    public void EmpresaDataOnDemand.setSCIF(Empresa obj, int index) {
        String sCIF = "sCIFxxx_" + index;
        if (sCIF.length() > 16) {
            sCIF = sCIF.substring(0, 16);
        }
        obj.setSCIF(sCIF);
    }
    
    public void EmpresaDataOnDemand.setSDireccion(Empresa obj, int index) {
        String sDireccion = "sDireccion_" + index;
        if (sDireccion.length() > 128) {
            sDireccion = sDireccion.substring(0, 128);
        }
        obj.setSDireccion(sDireccion);
    }
    
    public void EmpresaDataOnDemand.setSEmail(Empresa obj, int index) {
        String sEmail = "foo" + index + "@bar.com";
        if (sEmail.length() > 128) {
            sEmail = sEmail.substring(0, 128);
        }
        obj.setSEmail(sEmail);
    }
    
    public void EmpresaDataOnDemand.setSNombre(Empresa obj, int index) {
        String sNombre = "sNombre_" + index;
        if (sNombre.length() > 32) {
            sNombre = sNombre.substring(0, 32);
        }
        obj.setSNombre(sNombre);
    }
    
    public void EmpresaDataOnDemand.setSPassword(Empresa obj, int index) {
        String sPassword = "sPassword_" + index;
        if (sPassword.length() > 128) {
            sPassword = sPassword.substring(0, 128);
        }
        obj.setSPassword(sPassword);
    }
    
    public void EmpresaDataOnDemand.setSTelefono(Empresa obj, int index) {
        String sTelefono = "sTelefono_" + index;
        if (sTelefono.length() > 16) {
            sTelefono = sTelefono.substring(0, 16);
        }
        obj.setSTelefono(sTelefono);
    }
    
    public void EmpresaDataOnDemand.setSTitulo(Empresa obj, int index) {
        String sTitulo = "sTitulo_" + index;
        if (sTitulo.length() > 32) {
            sTitulo = sTitulo.substring(0, 32);
        }
        obj.setSTitulo(sTitulo);
    }
    
    public Empresa EmpresaDataOnDemand.getSpecificEmpresa(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Empresa obj = data.get(index);
        Long id = obj.getId();
        return Empresa.findEmpresa(id);
    }
    
    public Empresa EmpresaDataOnDemand.getRandomEmpresa() {
        init();
        Empresa obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Empresa.findEmpresa(id);
    }
    
    public boolean EmpresaDataOnDemand.modifyEmpresa(Empresa obj) {
        return false;
    }
    
    public void EmpresaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Empresa.findEmpresaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Empresa' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Empresa>();
        for (int i = 0; i < 10; i++) {
            Empresa obj = getNewTransientEmpresa(i);
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
