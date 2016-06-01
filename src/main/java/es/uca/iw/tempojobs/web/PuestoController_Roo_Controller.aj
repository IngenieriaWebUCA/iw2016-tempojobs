// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.web;

import es.uca.iw.tempojobs.domain.Puesto;
import es.uca.iw.tempojobs.web.PuestoController;
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

privileged aspect PuestoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PuestoController.create(@Valid Puesto puesto, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, puesto);
            return "puestoes/create";
        }
        uiModel.asMap().clear();
        puesto.persist();
        return "redirect:/puestoes/" + encodeUrlPathSegment(puesto.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PuestoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Puesto());
        return "puestoes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PuestoController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("puesto", Puesto.findPuesto(id));
        uiModel.addAttribute("itemId", id);
        return "puestoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PuestoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("puestoes", Puesto.findPuestoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Puesto.countPuestoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("puestoes", Puesto.findAllPuestoes(sortFieldName, sortOrder));
        }
        return "puestoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PuestoController.update(@Valid Puesto puesto, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, puesto);
            return "puestoes/update";
        }
        uiModel.asMap().clear();
        puesto.merge();
        return "redirect:/puestoes/" + encodeUrlPathSegment(puesto.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PuestoController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Puesto.findPuesto(id));
        return "puestoes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PuestoController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Puesto puesto = Puesto.findPuesto(id);
        puesto.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/puestoes";
    }
    
    void PuestoController.populateEditForm(Model uiModel, Puesto puesto) {
        uiModel.addAttribute("puesto", puesto);
    }
    
    String PuestoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
