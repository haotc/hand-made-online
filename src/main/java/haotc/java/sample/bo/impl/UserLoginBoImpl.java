package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.UserLoginBo;
import haotc.java.sample.common.CommonConstants;
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

    @Override
    @Transactional(readOnly = false)
    public boolean save(String username, String email, String password) {
        customerLoginDao.save(new CustomerLoginEntity(username, password, null, email, CommonConstants.ROLE_CUSTOMER));
        return true;
    }

    @Override
    @Transactional(readOnly = false)
    public boolean save(String username, String email, String password, String role) {
        CustomerLoginEntity user = customerLoginDao.findById(username);
        if (user == null) {
            user = new CustomerLoginEntity();
            user.setLogin(username);
        }
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);
        customerLoginDao.save(user);
        return true;
    }

    @Override
    public boolean checkResetPassword(String username, String email, String roleCustomer) {
        CustomerLoginEntity user = customerLoginDao.findById(username);
        if (user.getEmail().equals(email) && user.getRole().equals(CommonConstants.ROLE_CUSTOMER)) {
            try {
//                SimpleMailMessage msg = new SimpleMailMessage();
            } catch (Exception e) {
                return true;
            }
        };
        return false;
    }
}
