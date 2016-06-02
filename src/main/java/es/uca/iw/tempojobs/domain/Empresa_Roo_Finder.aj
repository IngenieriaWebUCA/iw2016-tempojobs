// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Empresa;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Empresa_Roo_Finder {
    
    public static Long Empresa.countFindEmpresasByActividadProfesionalLike(String actividadProfesional) {
        if (actividadProfesional == null || actividadProfesional.length() == 0) throw new IllegalArgumentException("The actividadProfesional argument is required");
        actividadProfesional = actividadProfesional.replace('*', '%');
        if (actividadProfesional.charAt(0) != '%') {
            actividadProfesional = "%" + actividadProfesional;
        }
        if (actividadProfesional.charAt(actividadProfesional.length() - 1) != '%') {
            actividadProfesional = actividadProfesional + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE LOWER(o.actividadProfesional) LIKE LOWER(:actividadProfesional)", Long.class);
        q.setParameter("actividadProfesional", actividadProfesional);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Empresa.countFindEmpresasByCIF(String cIF) {
        if (cIF == null || cIF.length() == 0) throw new IllegalArgumentException("The cIF argument is required");
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE o.cIF = :cIF", Long.class);
        q.setParameter("cIF", cIF);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Empresa.countFindEmpresasByEmpleadosLessThan(Integer empleados) {
        if (empleados == null) throw new IllegalArgumentException("The empleados argument is required");
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE o.empleados < :empleados", Long.class);
        q.setParameter("empleados", empleados);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Empresa.countFindEmpresasByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Long.class);
        q.setParameter("nombre", nombre);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByActividadProfesionalLike(String actividadProfesional) {
        if (actividadProfesional == null || actividadProfesional.length() == 0) throw new IllegalArgumentException("The actividadProfesional argument is required");
        actividadProfesional = actividadProfesional.replace('*', '%');
        if (actividadProfesional.charAt(0) != '%') {
            actividadProfesional = "%" + actividadProfesional;
        }
        if (actividadProfesional.charAt(actividadProfesional.length() - 1) != '%') {
            actividadProfesional = actividadProfesional + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE LOWER(o.actividadProfesional) LIKE LOWER(:actividadProfesional)", Empresa.class);
        q.setParameter("actividadProfesional", actividadProfesional);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByActividadProfesionalLike(String actividadProfesional, String sortFieldName, String sortOrder) {
        if (actividadProfesional == null || actividadProfesional.length() == 0) throw new IllegalArgumentException("The actividadProfesional argument is required");
        actividadProfesional = actividadProfesional.replace('*', '%');
        if (actividadProfesional.charAt(0) != '%') {
            actividadProfesional = "%" + actividadProfesional;
        }
        if (actividadProfesional.charAt(actividadProfesional.length() - 1) != '%') {
            actividadProfesional = actividadProfesional + "%";
        }
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE LOWER(o.actividadProfesional) LIKE LOWER(:actividadProfesional)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("actividadProfesional", actividadProfesional);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByCIF(String cIF) {
        if (cIF == null || cIF.length() == 0) throw new IllegalArgumentException("The cIF argument is required");
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE o.cIF = :cIF", Empresa.class);
        q.setParameter("cIF", cIF);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByCIF(String cIF, String sortFieldName, String sortOrder) {
        if (cIF == null || cIF.length() == 0) throw new IllegalArgumentException("The cIF argument is required");
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE o.cIF = :cIF");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("cIF", cIF);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByEmpleadosLessThan(Integer empleados) {
        if (empleados == null) throw new IllegalArgumentException("The empleados argument is required");
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE o.empleados < :empleados", Empresa.class);
        q.setParameter("empleados", empleados);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByEmpleadosLessThan(Integer empleados, String sortFieldName, String sortOrder) {
        if (empleados == null) throw new IllegalArgumentException("The empleados argument is required");
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE o.empleados < :empleados");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("empleados", empleados);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Empresa.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByNombreLike(String nombre, String sortFieldName, String sortOrder) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
}
