package com.hospital.EJB;

import com.hospital.model.LogIn;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
@Remote
public class LogInBean implements LogInBeanI{

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String validateLogin(LogIn login) {

         return null;
    }
}
