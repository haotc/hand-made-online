package haotc.java.sample.dao;

import haotc.java.sample.entity.CustomerLoginEntity;

import java.util.List;

public interface CustomerLoginDao extends GenericDao<CustomerLoginEntity, String> {
    boolean checkLogin(String username, String password, String role);

    List<CustomerLoginEntity> getList();
}
