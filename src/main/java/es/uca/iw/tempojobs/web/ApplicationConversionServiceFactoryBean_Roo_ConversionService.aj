// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.web;

import es.uca.iw.tempojobs.domain.Demandante;
import es.uca.iw.tempojobs.domain.Empleado;
import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.Experiencia;
import es.uca.iw.tempojobs.domain.Formacion;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Oferta;
import es.uca.iw.tempojobs.domain.Perfil;
import es.uca.iw.tempojobs.domain.Puesto;
import es.uca.iw.tempojobs.domain.Sede;
import es.uca.iw.tempojobs.domain.UsuarioEmpresa;
import es.uca.iw.tempojobs.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Demandante, String> ApplicationConversionServiceFactoryBean.getDemandanteToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Demandante, java.lang.String>() {
            public String convert(Demandante demandante) {
                return new StringBuilder().append(demandante.getNombre()).append(' ').append(demandante.getApellidos()).append(' ').append(demandante.getFechaNac()).append(' ').append(demandante.getDireccion()).toString();
            }
        };
    }
    
    public Converter<Long, Demandante> ApplicationConversionServiceFactoryBean.getIdToDemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Demandante>() {
            public es.uca.iw.tempojobs.domain.Demandante convert(java.lang.Long id) {
                return Demandante.findDemandante(id);
            }
        };
    }
    
    public Converter<String, Demandante> ApplicationConversionServiceFactoryBean.getStringToDemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Demandante>() {
            public es.uca.iw.tempojobs.domain.Demandante convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Demandante.class);
            }
        };
    }
    
    public Converter<Empleado, String> ApplicationConversionServiceFactoryBean.getEmpleadoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Empleado, java.lang.String>() {
            public String convert(Empleado empleado) {
                return new StringBuilder().append(empleado.getNombre()).append(' ').append(empleado.getApellidos()).append(' ').append(empleado.getFechaNac()).append(' ').append(empleado.getDireccion()).toString();
            }
        };
    }
    
    public Converter<Long, Empleado> ApplicationConversionServiceFactoryBean.getIdToEmpleadoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Empleado>() {
            public es.uca.iw.tempojobs.domain.Empleado convert(java.lang.Long id) {
                return Empleado.findEmpleado(id);
            }
        };
    }
    
    public Converter<String, Empleado> ApplicationConversionServiceFactoryBean.getStringToEmpleadoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Empleado>() {
            public es.uca.iw.tempojobs.domain.Empleado convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Empleado.class);
            }
        };
    }
    
    public Converter<Empresa, String> ApplicationConversionServiceFactoryBean.getEmpresaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Empresa, java.lang.String>() {
            public String convert(Empresa empresa) {
                return new StringBuilder().append(empresa.getNombre()).append(' ').append(empresa.getCIF()).append(' ').append(empresa.getActividadProfesional()).append(' ').append(empresa.getEmpleados()).toString();
            }
        };
    }
    
    public Converter<Long, Empresa> ApplicationConversionServiceFactoryBean.getIdToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Empresa>() {
            public es.uca.iw.tempojobs.domain.Empresa convert(java.lang.Long id) {
                return Empresa.findEmpresa(id);
            }
        };
    }
    
    public Converter<String, Empresa> ApplicationConversionServiceFactoryBean.getStringToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Empresa>() {
            public es.uca.iw.tempojobs.domain.Empresa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Empresa.class);
            }
        };
    }
    
    public Converter<Experiencia, String> ApplicationConversionServiceFactoryBean.getExperienciaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Experiencia, java.lang.String>() {
            public String convert(Experiencia experiencia) {
                return new StringBuilder().append(experiencia.getEmpresa()).append(' ').append(experiencia.getPuesto()).append(' ').append(experiencia.getFechaInicio()).append(' ').append(experiencia.getFechaFinal()).toString();
            }
        };
    }
    
    public Converter<Long, Experiencia> ApplicationConversionServiceFactoryBean.getIdToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Experiencia>() {
            public es.uca.iw.tempojobs.domain.Experiencia convert(java.lang.Long id) {
                return Experiencia.findExperiencia(id);
            }
        };
    }
    
    public Converter<String, Experiencia> ApplicationConversionServiceFactoryBean.getStringToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Experiencia>() {
            public es.uca.iw.tempojobs.domain.Experiencia convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Experiencia.class);
            }
        };
    }
    
    public Converter<Formacion, String> ApplicationConversionServiceFactoryBean.getFormacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Formacion, java.lang.String>() {
            public String convert(Formacion formacion) {
                return new StringBuilder().append(formacion.getTitulo()).append(' ').append(formacion.getFechaInicio()).append(' ').append(formacion.getFechaFinal()).toString();
            }
        };
    }
    
    public Converter<Long, Formacion> ApplicationConversionServiceFactoryBean.getIdToFormacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Formacion>() {
            public es.uca.iw.tempojobs.domain.Formacion convert(java.lang.Long id) {
                return Formacion.findFormacion(id);
            }
        };
    }
    
    public Converter<String, Formacion> ApplicationConversionServiceFactoryBean.getStringToFormacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Formacion>() {
            public es.uca.iw.tempojobs.domain.Formacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Formacion.class);
            }
        };
    }
    
    public Converter<Inscripcion, String> ApplicationConversionServiceFactoryBean.getInscripcionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Inscripcion, java.lang.String>() {
            public String convert(Inscripcion inscripcion) {
                return new StringBuilder().append(inscripcion.getFechaInscripcion()).append(' ').append(inscripcion.getEstado()).toString();
            }
        };
    }
    
    public Converter<Long, Inscripcion> ApplicationConversionServiceFactoryBean.getIdToInscripcionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Inscripcion>() {
            public es.uca.iw.tempojobs.domain.Inscripcion convert(java.lang.Long id) {
                return Inscripcion.findInscripcion(id);
            }
        };
    }
    
    public Converter<String, Inscripcion> ApplicationConversionServiceFactoryBean.getStringToInscripcionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Inscripcion>() {
            public es.uca.iw.tempojobs.domain.Inscripcion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Inscripcion.class);
            }
        };
    }
    
    public Converter<Oferta, String> ApplicationConversionServiceFactoryBean.getOfertaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Oferta, java.lang.String>() {
            public String convert(Oferta oferta) {
                return new StringBuilder().append(oferta.getTipoContrato()).append(' ').append(oferta.getSueldoBruto()).append(' ').append(oferta.getVacantes()).append(' ').append(oferta.getFormacion()).toString();
            }
        };
    }
    
    public Converter<Long, Oferta> ApplicationConversionServiceFactoryBean.getIdToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Oferta>() {
            public es.uca.iw.tempojobs.domain.Oferta convert(java.lang.Long id) {
                return Oferta.findOferta(id);
            }
        };
    }
    
    public Converter<String, Oferta> ApplicationConversionServiceFactoryBean.getStringToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Oferta>() {
            public es.uca.iw.tempojobs.domain.Oferta convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Oferta.class);
            }
        };
    }
    
    public Converter<Perfil, String> ApplicationConversionServiceFactoryBean.getPerfilToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Perfil, java.lang.String>() {
            public String convert(Perfil perfil) {
                return new StringBuilder().append(perfil.getFoto()).toString();
            }
        };
    }
    
    public Converter<Long, Perfil> ApplicationConversionServiceFactoryBean.getIdToPerfilConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Perfil>() {
            public es.uca.iw.tempojobs.domain.Perfil convert(java.lang.Long id) {
                return Perfil.findPerfil(id);
            }
        };
    }
    
    public Converter<String, Perfil> ApplicationConversionServiceFactoryBean.getStringToPerfilConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Perfil>() {
            public es.uca.iw.tempojobs.domain.Perfil convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Perfil.class);
            }
        };
    }
    
    public Converter<Puesto, String> ApplicationConversionServiceFactoryBean.getPuestoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Puesto, java.lang.String>() {
            public String convert(Puesto puesto) {
                return new StringBuilder().append(puesto.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Puesto> ApplicationConversionServiceFactoryBean.getIdToPuestoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Puesto>() {
            public es.uca.iw.tempojobs.domain.Puesto convert(java.lang.Long id) {
                return Puesto.findPuesto(id);
            }
        };
    }
    
    public Converter<String, Puesto> ApplicationConversionServiceFactoryBean.getStringToPuestoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Puesto>() {
            public es.uca.iw.tempojobs.domain.Puesto convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Puesto.class);
            }
        };
    }
    
    public Converter<Sede, String> ApplicationConversionServiceFactoryBean.getSedeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.Sede, java.lang.String>() {
            public String convert(Sede sede) {
                return new StringBuilder().append(sede.getDireccion()).append(' ').append(sede.getLocalidad()).append(' ').append(sede.getProvincia()).append(' ').append(sede.getPais()).toString();
            }
        };
    }
    
    public Converter<Long, Sede> ApplicationConversionServiceFactoryBean.getIdToSedeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.Sede>() {
            public es.uca.iw.tempojobs.domain.Sede convert(java.lang.Long id) {
                return Sede.findSede(id);
            }
        };
    }
    
    public Converter<String, Sede> ApplicationConversionServiceFactoryBean.getStringToSedeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.Sede>() {
            public es.uca.iw.tempojobs.domain.Sede convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Sede.class);
            }
        };
    }
    
    public Converter<UsuarioEmpresa, String> ApplicationConversionServiceFactoryBean.getUsuarioEmpresaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.tempojobs.domain.UsuarioEmpresa, java.lang.String>() {
            public String convert(UsuarioEmpresa usuarioEmpresa) {
                return new StringBuilder().append(usuarioEmpresa.getNombre()).append(' ').append(usuarioEmpresa.getApellidos()).append(' ').append(usuarioEmpresa.getFechaNac()).append(' ').append(usuarioEmpresa.getDireccion()).toString();
            }
        };
    }
    
    public Converter<Long, UsuarioEmpresa> ApplicationConversionServiceFactoryBean.getIdToUsuarioEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.tempojobs.domain.UsuarioEmpresa>() {
            public es.uca.iw.tempojobs.domain.UsuarioEmpresa convert(java.lang.Long id) {
                return UsuarioEmpresa.findUsuarioEmpresa(id);
            }
        };
    }
    
    public Converter<String, UsuarioEmpresa> ApplicationConversionServiceFactoryBean.getStringToUsuarioEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.tempojobs.domain.UsuarioEmpresa>() {
            public es.uca.iw.tempojobs.domain.UsuarioEmpresa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UsuarioEmpresa.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getDemandanteToStringConverter());
        registry.addConverter(getIdToDemandanteConverter());
        registry.addConverter(getStringToDemandanteConverter());
        registry.addConverter(getEmpleadoToStringConverter());
        registry.addConverter(getIdToEmpleadoConverter());
        registry.addConverter(getStringToEmpleadoConverter());
        registry.addConverter(getEmpresaToStringConverter());
        registry.addConverter(getIdToEmpresaConverter());
        registry.addConverter(getStringToEmpresaConverter());
        registry.addConverter(getExperienciaToStringConverter());
        registry.addConverter(getIdToExperienciaConverter());
        registry.addConverter(getStringToExperienciaConverter());
        registry.addConverter(getFormacionToStringConverter());
        registry.addConverter(getIdToFormacionConverter());
        registry.addConverter(getStringToFormacionConverter());
        registry.addConverter(getInscripcionToStringConverter());
        registry.addConverter(getIdToInscripcionConverter());
        registry.addConverter(getStringToInscripcionConverter());
        registry.addConverter(getOfertaToStringConverter());
        registry.addConverter(getIdToOfertaConverter());
        registry.addConverter(getStringToOfertaConverter());
        registry.addConverter(getPerfilToStringConverter());
        registry.addConverter(getIdToPerfilConverter());
        registry.addConverter(getStringToPerfilConverter());
        registry.addConverter(getPuestoToStringConverter());
        registry.addConverter(getIdToPuestoConverter());
        registry.addConverter(getStringToPuestoConverter());
        registry.addConverter(getSedeToStringConverter());
        registry.addConverter(getIdToSedeConverter());
        registry.addConverter(getStringToSedeConverter());
        registry.addConverter(getUsuarioEmpresaToStringConverter());
        registry.addConverter(getIdToUsuarioEmpresaConverter());
        registry.addConverter(getStringToUsuarioEmpresaConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
