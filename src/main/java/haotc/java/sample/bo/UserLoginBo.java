package haotc.java.sample.bo;

import haotc.java.sample.entity.CustomerLoginEntity;
import haotc.java.sample.entity.ProductEntity;

import java.util.List;

public interface UserLoginBo extends GenericBo {
	boolean checkLogin(String username, String password, String role);
    List<CustomerLoginEntity> getCustomerLoginList();

    void remove(String userLogin);

    CustomerLoginEntity getUser(String userLogin);
}
