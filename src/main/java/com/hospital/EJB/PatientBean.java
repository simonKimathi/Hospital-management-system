package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.User;

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

    @Override
    public List<Patient> getPatientById(int nationalId) {
        return  entityManager.createQuery("FROM Patient p Where p.bioData.nationalId = :nationalId")
                .setParameter("nationalId",nationalId)
                .getResultList();
    }


    @Override
    public List<Patient> getPatientByName(String name) {

        return entityManager.createQuery("FROM Patient p Where p.bioData.firstName = :name or p.bioData.lastName = :name or p.bioData.surName = :name")
                .setParameter("name",name)
                .getResultList();
    }

    @Override
    public String removePatient(Patient patient) {
        entityManager.remove(entityManager.find(Patient.class, patient));
        return "Deleted";
    }
}
