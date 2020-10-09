package com.hospital.EJB;


import com.hospital.model.Doctor;
import com.hospital.model.Patient;

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
        return entityManager.createQuery("FROM User u where u.role = : role").setParameter("role","Doctor").getResultList();
    }

    @Override
    public List<Doctor> getDoctorById(String nationalId) {
        return  entityManager.createQuery("FROM User User u Where u.bioData.nationalId = :nationalId and u.role = : role")
                .setParameter("role","Doctor")
                .setParameter("nationalId",nationalId)
                .getResultList();
    }


    @Override
    public List<Doctor> getDoctorByName(String name) {

        return entityManager.createQuery("FROM User u Where u.bioData.firstName = :name or u.bioData.lastName = :name or u.bioData.surName = :name or u.bioData.nationalId = :name and u.role = : role")
                .setParameter("role","Doctor")
                .setParameter("name",name)
                .getResultList();
    }

    @Override
    public String removeDoctor(Doctor doctor) {
        entityManager.remove(entityManager.find(Doctor.class, doctor));
        return "Deleted";
    }

    @Override
    public List<Patient> getAllDoctorsPatients(String name) {
        return null;
    }

    @Override
    public List<Patient> getAttendedDoctorsPatients(String name) {
        return null;
    }

    @Override
    public List<Patient> getUnattendedDoctorsPatients(String name) {
        return null;
    }
}
