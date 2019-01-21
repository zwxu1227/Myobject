package zwx.service.interfaces;

import zwx.entity.database.Administrators;

import java.util.List;

public interface IAdministratorsService {
    Administrators login(String userName);

    List<Administrators> getAdmin();

    long saveAdmin(Administrators admin);

    int delAdmin(long id);
}
