package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.CustomerLoginDao;
import haotc.java.sample.entity.CustomerLoginEntity;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public class CustomerLoginDaoImpl extends GenericDaoImpl<CustomerLoginEntity, String>
        implements CustomerLoginDao {

    public CustomerLoginDaoImpl() {
        super(CustomerLoginEntity.class);
    }

    @Override
    public boolean checkLogin(String username, String password) {
        return ((getSession().createCriteria(CustomerLoginEntity.class)
                .add(Restrictions.eq("login", username))
                .add(Restrictions.eq("password", password))).list().size() == 1);
    }

    @Override
    public String saveCustomerLogin(String username, String email, String password) {
        return save(new CustomerLoginEntity(username, password, null, new Date(), new Date()));
    }
}
