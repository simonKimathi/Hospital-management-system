package com.hospital.EJB;


import com.hospital.model.Doctor;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
@Remote
public class DoctorBean implements DoctorBeanI {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String add( Doctor doctor) {

        entityManager.merge(doctor);
        return "ok";
    }


    @Override
    public List<Doctor> list() {
        return entityManager.createQuery("FROM Doctor d").getResultList();
    }

}
