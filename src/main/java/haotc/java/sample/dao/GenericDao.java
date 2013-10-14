package haotc.java.sample.dao;

import org.hibernate.criterion.Criterion;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<E, PK extends Serializable> {
	E findById(PK id);
    PK save(E e);
    void delete(E e);
    List<E> findByCriteria(Criterion criterion);
    void deleteByPk(PK pk);
}
