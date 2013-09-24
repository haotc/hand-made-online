package haotc.java.sample.dao;

import haotc.java.sample.entity.CustomerLoginEntity;

public interface CustomerLoginDao extends GenericDao<CustomerLoginEntity, String> {
    boolean checkLogin(String username, String password);

    String saveCustomerLogin(String username, String email, String password);
}
