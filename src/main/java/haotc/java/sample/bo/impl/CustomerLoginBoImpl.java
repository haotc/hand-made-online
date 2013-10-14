package haotc.java.sample.bo.impl;

import haotc.java.sample.bo.CustomerLoginBo;
import haotc.java.sample.dao.CustomerLoginDao;
import haotc.java.sample.entity.CustomerLoginEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("customerLoginBo")
@Transactional(readOnly = true)
public class CustomerLoginBoImpl extends GenericBoImpl implements CustomerLoginBo {

    @Autowired
    CustomerLoginDao customerLoginDao;

    @Override
    public boolean checkLogin(String username, String password) {
        return customerLoginDao.checkLogin(username, password);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<CustomerLoginEntity> getCustomerLoginList() {
        return customerLoginDao.getList();
    }
}
