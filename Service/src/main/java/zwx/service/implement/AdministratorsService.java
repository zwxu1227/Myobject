package zwx.service.implement;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import zwx.dal.mybatis.IAdministratorsDAL;
import zwx.entity.database.Administrators;
import zwx.service.interfaces.IAdministratorsService;

import javax.inject.Inject;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AdministratorsService implements IAdministratorsService {
    @Inject
    IAdministratorsDAL DAL;

    @Override
    public Administrators login(String userName) {
        return DAL.login(userName);
    }

    @Override
    public List <Administrators> getAdmin() {
        return DAL.getAdmin();
    }

    @Override
    public long saveAdmin(Administrators admin) {
        long id = 0;
        int count = DAL.saveAdmin(admin);
        if (count > 0)
            id = admin.getId();
        return id;
    }

    @Override
    public int delAdmin(long id) {
        return DAL.delAdmin(id);
    }

    @Scheduled(fixedDelay = 6_0000L, initialDelay = 5_000L)
    public void Schedule() {
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        int count= DAL.delAdmin(2);
        System.out.println(String.format("定时调度任务开始执行:%s ,删除条数：%s",  str,count));
    }
}
