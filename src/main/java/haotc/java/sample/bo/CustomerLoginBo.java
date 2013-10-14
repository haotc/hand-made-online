package haotc.java.sample.bo;

import haotc.java.sample.entity.CustomerLoginEntity;
import haotc.java.sample.entity.ProductEntity;

import java.util.List;

public interface CustomerLoginBo extends GenericBo {
	boolean checkLogin(String username, String password);
    List<CustomerLoginEntity> getCustomerLoginList();
}
