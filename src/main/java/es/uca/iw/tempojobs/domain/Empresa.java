package es.uca.iw.tempojobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     */
    @Size(min = 3, max = 32)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 9, max = 16)
    private String cIF;

    /**
     */
    @NotNull
    @Size(min = 3, max = 64)
    private String actividadProfesional;

    /**
     */
    @NotNull
    private Integer empleados;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Sede> sedes = new HashSet<Sede>();
}
