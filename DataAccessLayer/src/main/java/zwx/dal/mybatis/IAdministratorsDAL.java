package zwx.dal.mybatis;

import zwx.entity.database.Administrators;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IAdministratorsDAL {
    Administrators login(String userName);
    List<Administrators> getAdmin();
    int saveAdmin(Administrators admin);
    int delAdmin(long id);
}

