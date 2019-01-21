package zwx.web.controller;

import com.google.gson.Gson;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zwx.entity.database.Administrators;
import zwx.entity.database.Setting;
import zwx.service.interfaces.ISettingService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.UUID;

@Controller
@RequestMapping("/setting")
public class SettingController {
    private Logger logger = LogManager.getLogger();
    @Inject
    ISettingService service;
    @RequestMapping("/add")
    @ResponseBody
    public String add(){
        Setting setting=new Setting();
        setting.setName("测试添加");
        setting.setValue("001");
        setting.setDescription("我的测试");
        service.add(setting);
        return "Ok";
    }
    @RequestMapping("/get")
    @ResponseBody
    public String get(){
       Setting setting= service.get(1);
       return new Gson().toJson(setting);
    }

    @RequestMapping("/tran")
    @ResponseBody
    public String transaction(boolean isException) throws Exception {
        Setting setting = new Setting();
        setting.setDescription("我的事务测试");
        setting.setValue("1000");
        setting.setName("transaction");

        Administrators administrators = new Administrators();
        administrators.setCode(UUID.randomUUID().toString());
        administrators.setEmail("test@163.com");
        administrators.setName("事务测试admin");
        administrators.setPhone("13800138000");
        administrators.setPwd("123456");
        administrators.setState(1);
        administrators.setUserName("admin");
        administrators.setRegTime(Timestamp.from(Instant.now()));
        service.addSettingAndAdministrator(setting, administrators, isException);
        return "事务提交成功";
    }
}
