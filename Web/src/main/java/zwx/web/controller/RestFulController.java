package zwx.web.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zwx.entity.database.Administrators;
import zwx.service.interfaces.IAdministratorsService;

import javax.inject.Inject;
import java.util.List;

@Controller
public class RestFulController {
    @Inject
    IAdministratorsService service;
    @RequestMapping(value = "getFrist", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity get() {
        List<Administrators> admins = service.getAdmin();
        Administrators administrator = admins.get(0);
        return new ResponseEntity(administrator,new HttpHeaders(), HttpStatus.OK);
    }
}
