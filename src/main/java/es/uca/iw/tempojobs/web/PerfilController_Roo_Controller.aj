// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.web;

import es.uca.iw.tempojobs.domain.Demandante;
import es.uca.iw.tempojobs.domain.Experiencia;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.domain.Perfil;
import es.uca.iw.tempojobs.domain.Puesto;
import es.uca.iw.tempojobs.web.PerfilController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PerfilController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PerfilController.create(@Valid Perfil perfil, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, perfil);
            return "perfils/create";
        }
        uiModel.asMap().clear();
        perfil.persist();
        return "redirect:/perfils/" + encodeUrlPathSegment(perfil.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PerfilController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Perfil());
        return "perfils/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PerfilController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("perfil", Perfil.findPerfil(id));
        uiModel.addAttribute("itemId", id);
        return "perfils/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PerfilController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("perfils", Perfil.findPerfilEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Perfil.countPerfils() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("perfils", Perfil.findAllPerfils(sortFieldName, sortOrder));
        }
        return "perfils/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PerfilController.update(@Valid Perfil perfil, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, perfil);
            return "perfils/update";
        }
        uiModel.asMap().clear();
        perfil.merge();
        return "redirect:/perfils/" + encodeUrlPathSegment(perfil.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PerfilController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Perfil.findPerfil(id));
        return "perfils/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PerfilController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Perfil perfil = Perfil.findPerfil(id);
        perfil.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/perfils";
    }
    
    void PerfilController.populateEditForm(Model uiModel, Perfil perfil) {
        uiModel.addAttribute("perfil", perfil);
        uiModel.addAttribute("demandantes", Demandante.findAllDemandantes());
        uiModel.addAttribute("experiencias", Experiencia.findAllExperiencias());
        uiModel.addAttribute("inscripcions", Inscripcion.findAllInscripcions());
        uiModel.addAttribute("puestoes", Puesto.findAllPuestoes());
    }
    
    String PerfilController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
