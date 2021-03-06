// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.domain;

import es.uca.iw.tempojobs.domain.Formacion;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Formacion_Roo_Finder {
    
    public static Long Formacion.countFindFormacionsByTituloLike(String titulo) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Formacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Formacion AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)", Long.class);
        q.setParameter("titulo", titulo);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Formacion> Formacion.findFormacionsByTituloLike(String titulo) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Formacion.entityManager();
        TypedQuery<Formacion> q = em.createQuery("SELECT o FROM Formacion AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)", Formacion.class);
        q.setParameter("titulo", titulo);
        return q;
    }
    
    public static TypedQuery<Formacion> Formacion.findFormacionsByTituloLike(String titulo, String sortFieldName, String sortOrder) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Formacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Formacion AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Formacion> q = em.createQuery(queryBuilder.toString(), Formacion.class);
        q.setParameter("titulo", titulo);
        return q;
    }
    
}
