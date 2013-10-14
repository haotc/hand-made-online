package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.UserLoginBo;
import haotc.java.sample.dao.CustomerLoginDao;
import haotc.java.sample.entity.CustomerLoginEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userLoginBo")
@Transactional(readOnly = true)
public class UserLoginBoImpl extends GenericBoImpl implements UserLoginBo {

    @Autowired
    CustomerLoginDao customerLoginDao;

    @Override
    public boolean checkLogin(String username, String password, String role) {
        return customerLoginDao.checkLogin(username, password, role);
    }

    @Override
    public List<CustomerLoginEntity> getCustomerLoginList() {
        return customerLoginDao.getList();
    }

    @Override
    @Transactional(readOnly = false)
    public void remove(String userLogin) {
        customerLoginDao.deleteByPk(userLogin);
    }

    @Override
    public CustomerLoginEntity getUser(String userLogin) {
        return customerLoginDao.findById(userLogin);
    }
}
