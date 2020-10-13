package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.PatientVisits;
import com.hospital.model.User;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
    public long count() {
        Query query = entityManager.createQuery("SELECT count(*) FROM Patient p");
        return  (long) query.getSingleResult();
    }

    @Override
    public long todaysCount() {
/*
        LocalDateTime dateTime=LocalDateTime.now();
        String date= String.valueOf(dateTime);
        String timeString=date.replace("T"," ").substring(0,10);*/

        Query query = entityManager.createQuery("SELECT count(*) FROM Patient p where DATE_FORMAT(time_created,'%Y%c%d')=DATE_FORMAT(now(),'%Y%c%d')");
        return  (long) query.getSingleResult();
    }

    @Override
    public List<Patient> list() {

        return entityManager.createQuery("FROM Patient p").getResultList();
    }



    @Override
    public List<Patient> getPatientById(String nationalId) {
        return  entityManager.createQuery("FROM Patient p Where p.bioData.nationalId = :nationalId",Patient.class)
                .setParameter("nationalId",nationalId)
                .getResultList();
    }


    @Override
    public List<Patient> getPatientByName(String name) {

        return entityManager.createQuery("FROM Patient p Where p.bioData.firstName = :name or p.bioData.lastName = :name or p.bioData.surName = :name or p.bioData.nationalId = :name")
                .setParameter("name",name)
                .getResultList();
    }

    @Override
    public String removePatient(Patient patient) {
        entityManager.remove(entityManager.find(Patient.class, patient));
        return "Deleted";
    }
}
