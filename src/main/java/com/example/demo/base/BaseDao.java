package com.example.demo.base;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import javax.persistence.EntityManager;

public interface BaseDao {
    JpaRepository getRepository();
    EntityManager getEm();
}
