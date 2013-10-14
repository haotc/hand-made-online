package haotc.java.sample.dao.impl;

import haotc.java.sample.dao.GenericDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.List;

public abstract class GenericDaoImpl<E, PK extends Serializable> implements GenericDao<E, PK> {

    @Autowired
    private SessionFactory sessionFactory;

    private Class<E> entityClass;

    public GenericDaoImpl() {

    }

    public GenericDaoImpl(Class<E> entityClass) {
        this.entityClass = entityClass;
    }

    public Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public E findById(PK id) {
        return (E) getSession().get(entityClass, id);
    }

    @Override
    public PK save(E e) {
        return (PK) getSession().save(e);
    }

    @Override
    public void delete(E e) {
        getSession().delete(e);
    }

    @Override
    public void deleteByPk(PK pk) {
        E e = (E) getSession().get(entityClass, pk);
        getSession().delete(e);
    }

    @Override
    public List<E> findByCriteria(Criterion criterion) {
        return (List<E>) getSession().createCriteria(entityClass).add(criterion).list();
    }
}
