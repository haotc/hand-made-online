package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.ShippingAddressDao;
import haotc.java.sample.entity.ShippingAddressEntity;
import org.springframework.stereotype.Repository;

@Repository
public class ShippingAddressDaoImpl extends GenericDaoImpl<ShippingAddressEntity, Integer>
        implements ShippingAddressDao {

    public ShippingAddressDaoImpl() {
        super(ShippingAddressEntity.class);
    }
}
