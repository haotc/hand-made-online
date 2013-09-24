package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.CustomerRegisterBo;
import haotc.java.sample.dao.CustomerLoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by IntelliJ IDEA.
 * User: HaoTC
 * Date: 9/23/13
 * Time: 8:08 PM
 * To change this template use File | Settings | File Templates.
 */
@Service("customerRegisterBo")
@Transactional(readOnly = true)
public class CustomerRegisterBoImpl implements CustomerRegisterBo {

    @Autowired
    CustomerLoginDao customerLoginDao;

    @Override
    @Transactional(readOnly = false)
    public boolean register(String username, String email, String password) {
        String pk = customerLoginDao.saveCustomerLogin(username, email, password);
        return true;
    }
}
