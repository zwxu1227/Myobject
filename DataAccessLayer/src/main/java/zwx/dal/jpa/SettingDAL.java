package zwx.dal.jpa;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import zwx.entity.database.Administrators;
import zwx.entity.database.Setting;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional(value = "jpaTransactionManager")
@Repository
public class SettingDAL implements ISettingDAL {
   @PersistenceContext
    EntityManager entityManager;
    public Setting get(long id) {
        return entityManager.find(Setting.class,id);
    }


    public void add(Setting setting) {
        entityManager.persist(setting);
    }


    public List<Setting> getAll() {
        return entityManager.createQuery("select a from Setting a",Setting.class).getResultList();
    }

    @Transactional(value = "jpaTransactionManager",rollbackFor = {Exception.class})
    public void addSettingAndAdministrator(Setting setting, Administrators administrators, boolean isException) throws Exception {
        entityManager.persist(setting);
        if(isException)
        {
            throw new Exception("yes");
        }
        entityManager.persist(administrators);
        entityManager.flush();
    }
}
