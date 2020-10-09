package com.hospital.EJB;

import com.hospital.model.PatientVisits;
import com.hospital.model.Room;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDate;
import java.util.List;

@Stateless
@Remote
public class PatientVisitBean implements PatientVisitBeanI{

    @PersistenceContext
    private EntityManager entityManager; 
    
    @Override
    public String add(PatientVisits patientVisits) {
        entityManager.merge(patientVisits);
        return "ok";
    }

    @Override
    public PatientVisits findById(int id) {
        return entityManager.find(PatientVisits.class, id);
    }

    @Override
    public String delete(int id) throws Exception {
        if (id == 0)
            throw new Exception("Invalid visit details!!");

        entityManager.remove(entityManager.find(PatientVisits.class, id));

        return "OK";
    }

    @Override
    public List<PatientVisits> list() {
        return entityManager.createQuery("FROM PatientVisits p").getResultList();
    }

    @Override
    public List<PatientVisits> getVisitByDoctor(String id) {
        return null;
    }

    @Override
    public List<PatientVisits> getVisitByPatient(String id) {
        return  entityManager.createQuery("FROM PatientVisits p Where p.patientId = :nationalId")
                .setParameter("nationalId",id)
                .getResultList();
    }

    @Override
    public List<PatientVisits> doctorsPendingPatients(String id) {

        return entityManager.createQuery("FROM PatientVisits p where p.doctorId = : id and DATE_FORMAT(time_created,'%Y%c%d')=DATE_FORMAT(now(),'%Y%c%d') and p.status = : status")
                .setParameter("id",id)
                .setParameter("status","inProgress")
                .getResultList();
    }

    @Override
    public List<PatientVisits> doctorTodayPatients(String id) {

        return entityManager.createQuery("FROM PatientVisits p where p.doctorId= : id and DATE_FORMAT(time_created,'%Y%c%d')=DATE_FORMAT(now(),'%Y%c%d')")
                .setParameter("id",id)
                .getResultList();
    }

    @Override
    public List<PatientVisits> patientVisits(String id) {

        return entityManager.createQuery("FROM PatientVisits p where p.patientId = : id")
                .setParameter("id",id)
                .getResultList();
    }

    @Override
    public List<PatientVisits> patientVisitsInProgress(String id) {
        return entityManager.createQuery("FROM PatientVisits p where p.patientId = : id and p.status = : status")
                .setParameter("id",id)
                .setParameter("status","inProgress")
                .getResultList();
    }

    @Override
    public String deleteVisit(PatientVisits patientVisits) {
        entityManager.remove(entityManager.find(PatientVisits.class, patientVisits));
        return "Deleted";
    }
}
