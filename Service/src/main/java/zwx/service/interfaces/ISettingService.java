package zwx.service.interfaces;


import zwx.entity.database.Administrators;
import zwx.entity.database.Setting;

import java.util.List;

public interface ISettingService {
    Setting get(long id);
    void add(Setting setting);
    List<Setting> getAll();
    void addSettingAndAdministrator(Setting setting, Administrators administrators, boolean isException) throws Exception;
}
