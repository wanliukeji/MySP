package com.example.demo.dao.impl;

import com.example.demo.base.BaseDao;
import com.example.demo.dao.UserRepository;
import com.example.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;


@Component
public class UserDao implements BaseDao {

    public static UserDao instance;

    @Autowired
    public UserRepository repository;

    @PersistenceContext
    public EntityManager em;


    @PostConstruct
    public void init() {
        instance = this;
    }

    @Transactional
    public void score(){


    }

    @Override
    public EntityManager getEm() {
        return instance.em;
    }

    @Override
    public UserRepository getRepository() {
        return instance.repository;
    }

    @Transactional
    public void test(){

//        User t = new User();
//        t.setName("abc");
//        repository.saveAndFlush(t);
//
//        repository.delete(t);
//
//        repository.deleteById(1);
//
//        repository.findById(1);




        User user = repository.findById(1).get();
        user.setName("CHENYU");
        repository.saveAndFlush(user);

        List l = em.createQuery(
                "SELECT e, d  FROM User e LEFT JOIN e.role d")
                .getResultList();

    }
}
