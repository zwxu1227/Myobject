package zwx.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import zwx.entity.database.Administrators;
import zwx.service.interfaces.IAdministratorsService;

import javax.inject.Inject;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/administrator")
public class AdministratorController {
    @Inject
    IAdministratorsService service;
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create() {
        return "/administrator/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createAccount(@Valid Administrators administrators, Errors errors, Model model) {
        boolean isError = errors.hasErrors();
        if (isError) {
            Map<String,String> map=new HashMap<>();
            for (ObjectError error : errors.getAllErrors()) {
                map.put(((FieldError) error).getField(), error.getDefaultMessage());
                //model.addAttribute(((FieldError) error).getField(), error.getDefaultMessage());
                System.out.println(((FieldError) error).getField()+" : "+ error.getDefaultMessage());
            }
            model.addAllAttributes(map);
            model.addAttribute("admin",administrators);
            return "/administrator/create";
        }
       Long id= service.saveAdmin(administrators);
        return "redirect:/hello/user/"+id;
    }
}
