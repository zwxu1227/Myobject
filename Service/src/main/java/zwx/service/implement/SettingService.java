package zwx.service.implement;

import org.springframework.stereotype.Service;
import zwx.dal.jpa.ISettingDAL;
import zwx.entity.database.Administrators;
import zwx.entity.database.Setting;
import zwx.service.interfaces.ISettingService;

import javax.inject.Inject;
import java.util.List;

@Service
public class SettingService implements ISettingService {
    @Inject
    ISettingDAL dal;

    @Override
    public Setting get(long id) {
        return dal.get(id);
    }

    @Override
    public void add(Setting setting) {
        dal.add(setting);
    }

    @Override
    public List <Setting> getAll() {
        return dal.getAll();
    }

    @Override
    public void addSettingAndAdministrator(Setting setting, Administrators administrators, boolean isException) throws Exception {
        dal.addSettingAndAdministrator(setting, administrators, isException);
    }
}
