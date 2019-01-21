package zwx.web.controller;

import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zwx.entity.database.Administrators;
import zwx.service.interfaces.IAdministratorsService;

import javax.inject.Inject;
import java.util.List;

@Controller
public class HelloController {
    @Inject
    IAdministratorsService service;
    @ResponseBody
    @RequestMapping("/hello")
    public String helloWorld() {
        return "HelloWorld!!!";
    }

    @ResponseBody
    @RequestMapping("/hello/user/{id}")
    public String user(@PathVariable("id")Long id) {
       List<Administrators> list= service.getAdmin();
        return new Gson().toJson(list);
    }

}