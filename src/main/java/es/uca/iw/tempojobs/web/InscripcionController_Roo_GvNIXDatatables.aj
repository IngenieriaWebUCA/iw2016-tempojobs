// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.tempojobs.web;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.ajax.DatatablesResponse;
import com.github.dandelion.datatables.core.exception.ExportException;
import com.github.dandelion.datatables.core.export.CsvExport;
import com.github.dandelion.datatables.core.export.DatatablesExport;
import com.github.dandelion.datatables.core.export.ExportConf;
import com.github.dandelion.datatables.core.export.ExportType;
import com.github.dandelion.datatables.core.export.ExportUtils;
import com.github.dandelion.datatables.core.export.XmlExport;
import com.github.dandelion.datatables.core.html.HtmlTable;
import com.github.dandelion.datatables.extras.export.itext.PdfExport;
import com.github.dandelion.datatables.extras.export.poi.XlsExport;
import com.github.dandelion.datatables.extras.export.poi.XlsxExport;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import es.uca.iw.tempojobs.domain.Inscripcion;
import es.uca.iw.tempojobs.web.InscripcionController;
import es.uca.iw.tempojobs.web.InscripcionController_Roo_Controller;
import es.uca.iw.tempojobs.web.InscripcionController_Roo_GvNIXDatatables;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.validation.Valid;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.gvnix.web.datatables.query.SearchResults;
import org.gvnix.web.datatables.util.DatatablesUtilsBean;
import org.gvnix.web.datatables.util.EntityManagerProvider;
import org.gvnix.web.datatables.util.QuerydslUtilsBean;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

privileged aspect InscripcionController_Roo_GvNIXDatatables {
    
    declare precedence: InscripcionController_Roo_GvNIXDatatables, InscripcionController_Roo_Controller;
    
    @Autowired
    public ConversionService InscripcionController.conversionService_dtt;
    
    @Autowired
    public MessageSource InscripcionController.messageSource_dtt;
    
    public BeanWrapper InscripcionController.beanWrapper_dtt;
    
    @Autowired
    private EntityManagerProvider InscripcionController.entityManagerProvider_dtt;
    
    @Autowired
    public DatatablesUtilsBean InscripcionController.datatablesUtilsBean_dtt;
    
    @Autowired
    public QuerydslUtilsBean InscripcionController.querydslUtilsBean_dtt;
    
    @RequestMapping(method = RequestMethod.GET, produces = "text/html")
    public String InscripcionController.listDatatables(Model uiModel, HttpServletRequest request) {
        Map<String, String> params = populateParametersMap(request);
        // Get parentId information for details render
        String parentId = params.remove("_dt_parentId");
        if (StringUtils.isNotBlank(parentId)) {
            uiModel.addAttribute("parentId", parentId);
        }
        String parentTableHashId = params.remove("dtt_parent_table_id_hash");
        if (StringUtils.isNotBlank(parentTableHashId)) {
            uiModel.addAttribute("dtt_parent_table_id_hash", parentTableHashId);
        }
        String tableHashId = params.remove("dtt_table_id_hash");
        if (StringUtils.isNotBlank(tableHashId) && !uiModel.containsAttribute("dtt_table_id_hash")) {
            uiModel.addAttribute("dtt_table_id_hash", tableHashId);
        }
        String rowOnTopIds = params.remove("dtt_row_on_top_ids");
        if (StringUtils.isNotBlank(rowOnTopIds)) {
            uiModel.addAttribute("dtt_row_on_top_ids", rowOnTopIds);
        }
        if (!params.isEmpty()) {
            uiModel.addAttribute("baseFilter", params);
        }
        return "inscripcions/list";
    }
    
    @ModelAttribute
    public void InscripcionController.populateDatatablesConfig(Model uiModel) {
        uiModel.addAttribute("datatablesHasBatchSupport", true);
        uiModel.addAttribute("datatablesUseAjax",true);
        uiModel.addAttribute("datatablesInlineEditing",false);
        uiModel.addAttribute("datatablesInlineCreating",false);
        uiModel.addAttribute("datatablesSecurityApplied",true);
        uiModel.addAttribute("datatablesStandardMode",false);
        uiModel.addAttribute("finderNameParam","ajax_find");
    }
    
    @RequestMapping(produces = "text/html")
    public String InscripcionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        // overrides the standard Roo list method and
        // delegates on datatables list method
        return listDatatables(uiModel, null);
    }
    
    public Map<String, String> InscripcionController.populateParametersMap(HttpServletRequest request) {
        Map<String, Object> params;
        if (request == null) {
            params = Collections.emptyMap();
        } else {
            params = new HashMap<String, Object>(request.getParameterMap());
        }
        
        Map<String, String> allParams = new HashMap<String, String>(params.size());
        
        String value;
        Object objValue;
        for (String key : params.keySet()) {
            objValue = params.get(key);
            if (objValue instanceof String[]) {
                value = ((String[]) objValue)[0];
            } else {
                value = (String) objValue;
            }
            allParams.put(key, value);
        }
        return allParams;
    }
    
    public Map<String, Object> InscripcionController.getPropertyMap(Inscripcion Inscripcion, Enumeration<Map<String, String>> propertyNames) {
        Map<String, Object> propertyValuesMap = new HashMap<String, Object>();
        
        // If no entity or properties given, return empty Map
        if(Inscripcion == null || propertyNames == null) {
            return propertyValuesMap;
        }
        
        List<String> properties = new ArrayList<String>();
        CollectionUtils.addAll(properties, propertyNames);
        
        // There must be at least one property name, otherwise return empty Map
        if (properties.isEmpty()) {
            return propertyValuesMap;
        }
        
        // Iterate over given properties to get each property value
        BeanWrapper entityBean = new BeanWrapperImpl(Inscripcion);
        for (String propertyName : properties) {
            if (entityBean.isReadableProperty(propertyName)) {
                Object propertyValue = null;
                try {
                    propertyValue = entityBean.getPropertyValue(propertyName);
                } catch (Exception e){
                    // TODO log warning
                    continue;
                }
                propertyValuesMap.put(propertyName, propertyValue);
            }
        }
        return propertyValuesMap;
    }
    
    public Map<String, Object> InscripcionController.getPropertyMap(Inscripcion Inscripcion, HttpServletRequest request) {
        // URL parameters are used as base search filters
        @SuppressWarnings("unchecked") Map<String, Object> propertyValuesMap = getPropertyMap(Inscripcion, request.getParameterNames());
        // Add to the property map the parameters used as query operators
        Map<String, Object> params = new HashMap<String, Object>(populateParametersMap(request));
        Set<String> keySet = params.keySet();
        for (String key : keySet) {
            if (datatablesUtilsBean_dtt.isSpecialFilterParameters(key)) {
                propertyValuesMap.put(key, params.get(key));
            }
        }
        return propertyValuesMap;
    }
    
    public void InscripcionController.setDatatablesBaseFilter(Map<String, Object> propertyMap) {
        // Add here your baseFilters to propertyMap.
    }
    
    @ResponseBody
    @RequestMapping(headers = "Accept=application/json", params = "getColumnType")
    public String InscripcionController.getColumnType(Model uiModel, HttpServletRequest request, @RequestParam(value = "_columnName_", required = false) String columnName) {
        // Getting all declared fields
        boolean fieldExists = false;
        Field attr = null;
        for(Field field : Inscripcion.class.getDeclaredFields()){
            if(field.getName().equals(columnName)){
                attr = field;
                fieldExists = true;
                break;
            }
        }
        // If current field not exists on entity, find on superclass
        if(!fieldExists){
            if(Inscripcion.class.getSuperclass() != null){
                for(Field field : Inscripcion.class.getSuperclass().getDeclaredFields()){
                    if(field.getName().equals(columnName)){
                        attr = field;
                        fieldExists = true;
                        break;
                    }
                }
            }
        }
        if(fieldExists){
            // Getting field type
            Object fieldType = null;
            if (attr != null) {
                fieldType = attr.getType();
                String type = fieldType.toString();
                // Returning value based on type
                if ("String".equals(type)){
                    return "{\"columnType\": \"string\"}";
                } else if ("float".equals(type) || type.contains("Float")){
                    return "{\"columnType\": \"number\"}";
                } else if ("short".equals(type) || type.contains("Short")){
                    return "{\"columnType\": \"number\"}";
                } else if ("long".equals(type) || type.contains("Long")){
                    return "{\"columnType\": \"number\"}";
                } else if ("double".equals(type) || type.contains("Double")){
                    return "{\"columnType\": \"number\"}";
                } else if ("int".equals(type) || type.contains("Integer")){
                    return "{\"columnType\": \"number\"}";
                } else if ("Date".equals(type)){
                    return "{\"columnType\": \"date\"}";
                } else if ("boolean".equals(type) || type.contains("Boolean")){
                    return "{\"columnType\": \"boolean\"}";
                } else {
                    // Returning by default
                    return "{\"columnType\": \"undefined\"}";
                }
            }
        }
        // Returning by default
        return "{\"columnType\": \"undefined\"}";
    }
    
    @ResponseBody
    @RequestMapping(headers = "Accept=application/json", params = "geti18nText")
    public String InscripcionController.geti18nText(Model uiModel, HttpServletRequest request, @RequestParam(value = "_locale_", required = false) String locale) {
        // Getting current locale
        Locale defaultLocale = new Locale(locale);
        // Building JSON response
        StringBuilder json = new StringBuilder();
        json.append("{");
        json.append("\"all_isnull\": \"" + messageSource_dtt.getMessage("global.filters.operations.all.isnull", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"all_notnull\": \"" + messageSource_dtt.getMessage("global.filters.operations.all.notnull", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"boolean_false\": \"" + messageSource_dtt.getMessage("global.filters.operations.boolean.false", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"boolean_true\": \"" + messageSource_dtt.getMessage("global.filters.operations.boolean.true", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"date_between\": \"" + messageSource_dtt.getMessage("global.filters.operations.date.between", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"date_date\": \"" + messageSource_dtt.getMessage("global.filters.operations.date.date", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"date_day\": \"" + messageSource_dtt.getMessage("global.filters.operations.date.day", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"date_month\": \"" + messageSource_dtt.getMessage("global.filters.operations.date.month", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"date_year\": \"" + messageSource_dtt.getMessage("global.filters.operations.date.year", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"number_between\": \"" + messageSource_dtt.getMessage("global.filters.operations.number.between", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"string_contains\": \"" + messageSource_dtt.getMessage("global.filters.operations.string.contains", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"string_ends\": \"" + messageSource_dtt.getMessage("global.filters.operations.string.ends", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"string_isempty\": \"" + messageSource_dtt.getMessage("global.filters.operations.string.isempty", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"string_isnotempty\": \"" + messageSource_dtt.getMessage("global.filters.operations.string.isnotempty", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"string_starts\": \"" + messageSource_dtt.getMessage("global.filters.operations.string.starts", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"button_find\": \"" + messageSource_dtt.getMessage("button_find", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_all_isnull\": \"" + messageSource_dtt.getMessage("help.all.isnull", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_all_notnull\": \"" + messageSource_dtt.getMessage("help.all.notnull", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_boolean_false\": \"" + messageSource_dtt.getMessage("help.boolean.false", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_boolean_true\": \"" + messageSource_dtt.getMessage("help.boolean.true", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_date_between\": \"" + messageSource_dtt.getMessage("help.date.between", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_date_date\": \"" + messageSource_dtt.getMessage("help.date.date", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_date_day\": \"" + messageSource_dtt.getMessage("help.date.day", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_date_month\": \"" + messageSource_dtt.getMessage("help.date.month", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_date_year\": \"" + messageSource_dtt.getMessage("help.date.year", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_between\": \"" + messageSource_dtt.getMessage("help.number.between", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_eq\": \"" + messageSource_dtt.getMessage("help.number.eq", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_neq\": \"" + messageSource_dtt.getMessage("help.number.neq", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_gt\": \"" + messageSource_dtt.getMessage("help.number.gt", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_lt\": \"" + messageSource_dtt.getMessage("help.number.lt", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_goe\": \"" + messageSource_dtt.getMessage("help.number.goe", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_number_loe\": \"" + messageSource_dtt.getMessage("help.number.loe", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_string_contains\": \"" + messageSource_dtt.getMessage("help.string.contains", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_string_ends\": \"" + messageSource_dtt.getMessage("help.string.ends", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_string_isempty\": \"" + messageSource_dtt.getMessage("help.string.isempty", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_string_isnotempty\": \"" + messageSource_dtt.getMessage("help.string.isnotempty", null, defaultLocale) + "\"");
        json.append(",");
        json.append("\"help_string_starts\": \"" + messageSource_dtt.getMessage("help.string.starts", null, defaultLocale) + "\"");
        json.append("}");
        // return JSON with locale strings
        return json.toString();
    }
    
    /**
     * Show only the list view fragment for entity as detail datatables into a master datatables.
     */
    @RequestMapping(produces = "text/html", value = "/list")
    public String InscripcionController.listDatatablesDetail(Model uiModel, HttpServletRequest request, @ModelAttribute Inscripcion inscripcion) {
        // Do common datatables operations: get entity list filtered by request parameters
        listDatatables(uiModel, request);
        // Show only the list fragment (without footer, header, menu, etc.) 
        return "forward:/WEB-INF/views/inscripcions/list.jspx";
    }
    
    /**
     * Create an entity and redirect to given URL.
     */
    @RequestMapping(produces = "text/html", method = RequestMethod.POST, params = "datatablesRedirect")
    public String InscripcionController.createDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @Valid Inscripcion inscripcion, BindingResult bindingResult, Model uiModel, RedirectAttributes redirectModel, HttpServletRequest httpServletRequest) {
        // Do common create operations (check errors, populate, persist, ...)
        String view = create(inscripcion, bindingResult, uiModel, httpServletRequest);
        // If binding errors or no redirect, return common create error view (remain in create form)
        if (bindingResult.hasErrors() || redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        String[] paramValues = httpServletRequest.getParameterValues("dtt_table_id_hash");
        if(paramValues != null && paramValues.length > 0) {
            redirectModel.addFlashAttribute("dtt_table_id_hash", paramValues[0]);
        }else{
            redirectModel.addFlashAttribute("dtt_table_id_hash", "");
        }
        redirectModel.addFlashAttribute(DatatablesUtilsBean.ROWS_ON_TOP_IDS_PARAM, inscripcion.getId());
        // If create success, redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    /**
     * Update an entity and redirect to given URL.
     */
    @RequestMapping(produces = "text/html", method = RequestMethod.PUT, params = "datatablesRedirect")
    public String InscripcionController.updateDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @Valid Inscripcion inscripcion, BindingResult bindingResult, Model uiModel, RedirectAttributes redirectModel, HttpServletRequest httpServletRequest) {
        // Do common update operations (check errors, populate, merge, ...)
        String view = update(inscripcion, bindingResult, uiModel, httpServletRequest);
        // If binding errors or no redirect, return common update error view (remain in update form)
        if (bindingResult.hasErrors() || redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        String[] paramValues = httpServletRequest.getParameterValues("dtt_table_id_hash");
        if(paramValues != null && paramValues.length > 0) {
            redirectModel.addFlashAttribute("dtt_table_id_hash", paramValues[0]);
        }else{
            redirectModel.addFlashAttribute("dtt_table_id_hash", "");
        }
        redirectModel.addFlashAttribute(DatatablesUtilsBean.ROWS_ON_TOP_IDS_PARAM, inscripcion.getId());
        // If update success, redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    /**
     * Delete an entity and redirect to given URL.
     */
    @RequestMapping(produces = "text/html", method = RequestMethod.DELETE, params = "datatablesRedirect", value = "/{id}")
    public String InscripcionController.deleteDatatablesDetail(@RequestParam(value = "datatablesRedirect", required = true) String redirect, @PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        // Do common delete operations (find, remove, add pagination attributes, ...)
        String view = delete(id, page, size, uiModel);
        // If no redirect, return common list view
        if (redirect == null || redirect.trim().isEmpty()) {
            return view;
        }
        // Redirect to given URL: master datatables
        return "redirect:".concat(redirect);
    }
    
    public void InscripcionController.populateItemForRender(HttpServletRequest request, Inscripcion inscripcion, boolean editing) {
        org.springframework.ui.Model uiModel = new org.springframework.ui.ExtendedModelMap();
        
        request.setAttribute("inscripcion", inscripcion);
        request.setAttribute("itemId", conversionService_dtt.convert(inscripcion.getId(),String.class));
        
        if (editing) {
            // spring from:input tag uses BindingResult to locate property editors for each bean
            // property. So, we add a request attribute (required key id BindingResult.MODEL_KEY_PREFIX + object name)
            // with a correctly initialized bindingResult.
            BeanPropertyBindingResult bindindResult = new BeanPropertyBindingResult(inscripcion, "inscripcion");
            bindindResult.initConversion(conversionService_dtt);
            request.setAttribute(BindingResult.MODEL_KEY_PREFIX + "inscripcion",bindindResult);
            // Add date time patterns and enums to populate inputs
            populateEditForm(uiModel, inscripcion);
        } else {
            // Add date time patterns
            addDateTimeFormatPatterns(uiModel);
        }
        
        // Load uiModel attributes into request
        Map<String, Object> modelMap = uiModel.asMap();
        for (String key : modelMap.keySet()){
            request.setAttribute(key, modelMap.get(key));
        }
    }
    
    public List<Map<String, String>> InscripcionController.renderInscripcions(SearchResults<Inscripcion> searchResult, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Prepare result
        List<Inscripcion> inscripcions = searchResult.getResults();
        List<Map<String, String>> result = new ArrayList<Map<String, String>>(inscripcions.size());
        String controllerPath = "inscripcions";
        String pageToUse = "show";
        String renderUrl = String.format("/WEB-INF/views/%s/%s.jspx", controllerPath, pageToUse);
        
        // For every element
        for (Inscripcion Inscripcion: inscripcions) {
            Map<String, String> item = new HashMap<String, String>();
            final StringWriter buffer = new StringWriter();
            // Call JSP to render current entity
            RequestDispatcher dispatcher = request.getRequestDispatcher(renderUrl);
            
            populateItemForRender(request, Inscripcion, false);
            dispatcher.include(request, new HttpServletResponseWrapper(response) {
                private PrintWriter writer = new PrintWriter(buffer);
                @Override
                public PrintWriter getWriter() throws IOException {
                    return writer;
                }
            });
            
            String render = buffer.toString();
            // Load item id)
            item.put("DT_RowId", conversionService_dtt.convert(Inscripcion.getId(), String.class));
            // Put rendered content into first column (uses column index)
            item.put("0", render);
            
            result.add(item);
        }
        
        return result;
    }
    
    @RequestMapping(headers = "Accept=application/json", value = "/datatables/ajax", produces = "application/json")
    @ResponseBody
    public DatatablesResponse<Map<String, String>> InscripcionController.findAllInscripcions(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // URL parameters are used as base search filters
        Map<String, Object> baseSearchValuesMap = getPropertyMap(inscripcion, request);
        setDatatablesBaseFilter(baseSearchValuesMap);
        SearchResults<Inscripcion> searchResult = datatablesUtilsBean_dtt.findByCriteria(Inscripcion.class, criterias, baseSearchValuesMap);
        
        // Get datatables required counts
        long totalRecords = searchResult.getTotalCount();
        long recordsFound = searchResult.getResultsCount();
        List<Map<String, String>> rows = renderInscripcions(searchResult, request, response);
        DataSet<Map<String, String>> dataSet = new DataSet<Map<String, String>>(rows, totalRecords, recordsFound); 
        return DatatablesResponse.build(dataSet,criterias);
    }
    
    @RequestMapping(value = "/exportcsv", produces = "text/csv")
    public void InscripcionController.exportCsv(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, inscripcion, ExportType.CSV, new CsvExport(), request, response);
    }
    
    @RequestMapping(value = "/exportpdf", produces = "text/pdf")
    public void InscripcionController.exportPdf(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, inscripcion, ExportType.PDF, new PdfExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxls", produces = "text/xls")
    public void InscripcionController.exportXls(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, inscripcion, ExportType.XLS, new XlsExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxlsx", produces = "text/xlsx")
    public void InscripcionController.exportXlsx(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, inscripcion, ExportType.XLSX, new XlsxExport(), request, response);
    }
    
    @RequestMapping(value = "/exportxml", produces = "text/xml")
    public void InscripcionController.exportXml(@DatatablesParams DatatablesCriterias criterias, @ModelAttribute Inscripcion inscripcion, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ExportException {
        export(criterias, inscripcion, ExportType.XML, new XmlExport(), request, response);
    }
    
    public void InscripcionController.export(DatatablesCriterias criterias, Inscripcion inscripcion, ExportType exportType, DatatablesExport datatablesExport, HttpServletRequest request, HttpServletResponse response) throws ExportException {
        // Does the export process as is explained in http://dandelion.github.io/datatables/tutorials/export/controller-based-exports.html
        // 1. Retrieve the data
        List<Map<String, String>> data = retrieveData(criterias, inscripcion, request);
        // 2. Build an instance of "ExportConf"
        ExportConf exportConf = new ExportConf.Builder(exportType).header(true).exportClass(datatablesExport).autoSize(true).fileName(inscripcion.getClass().getSimpleName()).build();
        // 3. Build an instance of "HtmlTable"
        HtmlTable table = datatablesUtilsBean_dtt.makeHtmlTable(data, criterias, exportConf, request);
        // 4. Render the generated export file
        ExportUtils.renderExport(table, exportConf, response);
    }
    
    private List<Map<String, String>> InscripcionController.retrieveData(DatatablesCriterias criterias, Inscripcion Inscripcion, HttpServletRequest request) {
        // Cloned criteria in order to not paginate the results
        DatatablesCriterias noPaginationCriteria = new DatatablesCriterias(criterias.getSearch(), 0, null, criterias.getColumnDefs(), criterias.getSortingColumnDefs(), criterias.getInternalCounter());
        // Do the search to obtain the data
        Map<String, Object> baseSearchValuesMap = getPropertyMap(Inscripcion, request);
        setDatatablesBaseFilter(baseSearchValuesMap);
        org.gvnix.web.datatables.query.SearchResults<es.uca.iw.tempojobs.domain.Inscripcion> searchResult = datatablesUtilsBean_dtt.findByCriteria(Inscripcion.class, noPaginationCriteria, baseSearchValuesMap);
        org.springframework.ui.Model uiModel = new org.springframework.ui.ExtendedModelMap();
        addDateTimeFormatPatterns(uiModel);
        Map<String, Object> datePattern = uiModel.asMap();
        // Use ConversionService with the obtained data
        return datatablesUtilsBean_dtt.populateDataSet(searchResult.getResults(), "id", searchResult.getTotalCount(), searchResult.getResultsCount(), criterias.getColumnDefs(), datePattern).getRows();
    }
    
}