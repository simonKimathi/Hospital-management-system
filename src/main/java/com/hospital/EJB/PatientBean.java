package com.hospital.EJB;

import com.hospital.model.Patient;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
@Remote
public class PatientBean implements PatientBeanI {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String add( Patient patient) {
        entityManager.merge(patient);
        return "ok";
    }

    @Override
    public List<Patient> list() {

        return entityManager.createQuery("FROM Patient p").getResultList();
    }
}
