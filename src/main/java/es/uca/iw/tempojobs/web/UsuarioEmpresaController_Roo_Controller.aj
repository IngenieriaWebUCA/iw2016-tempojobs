// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.web;

import es.uca.iw.tempojobs.domain.Empresa;
import es.uca.iw.tempojobs.domain.UsuarioEmpresa;
import es.uca.iw.tempojobs.web.UsuarioEmpresaController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect UsuarioEmpresaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String UsuarioEmpresaController.create(@Valid UsuarioEmpresa usuarioEmpresa, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, usuarioEmpresa);
            return "usuarioempresas/create";
        }
        uiModel.asMap().clear();
        usuarioEmpresa.persist();
        return "redirect:/usuarioempresas/" + encodeUrlPathSegment(usuarioEmpresa.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String UsuarioEmpresaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new UsuarioEmpresa());
        return "usuarioempresas/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String UsuarioEmpresaController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("usuarioempresa", UsuarioEmpresa.findUsuarioEmpresa(id));
        uiModel.addAttribute("itemId", id);
        return "usuarioempresas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String UsuarioEmpresaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("usuarioempresas", UsuarioEmpresa.findUsuarioEmpresaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) UsuarioEmpresa.countUsuarioEmpresas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("usuarioempresas", UsuarioEmpresa.findAllUsuarioEmpresas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "usuarioempresas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String UsuarioEmpresaController.update(@Valid UsuarioEmpresa usuarioEmpresa, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, usuarioEmpresa);
            return "usuarioempresas/update";
        }
        uiModel.asMap().clear();
        usuarioEmpresa.merge();
        return "redirect:/usuarioempresas/" + encodeUrlPathSegment(usuarioEmpresa.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String UsuarioEmpresaController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, UsuarioEmpresa.findUsuarioEmpresa(id));
        return "usuarioempresas/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String UsuarioEmpresaController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        UsuarioEmpresa usuarioEmpresa = UsuarioEmpresa.findUsuarioEmpresa(id);
        usuarioEmpresa.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/usuarioempresas";
    }
    
    void UsuarioEmpresaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("usuarioEmpresa_fechanac_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void UsuarioEmpresaController.populateEditForm(Model uiModel, UsuarioEmpresa usuarioEmpresa) {
        uiModel.addAttribute("usuarioEmpresa", usuarioEmpresa);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("empresas", Empresa.findAllEmpresas());
    }
    
    String UsuarioEmpresaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
