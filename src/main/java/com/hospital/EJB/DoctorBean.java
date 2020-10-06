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
        return entityManager.createQuery("FROM Doctor d").getResultList();
    }

    @Override
    public List<Doctor> getDoctorById(String nationalId) {
        return  entityManager.createQuery("FROM Doctor d Where d.bioData.nationalId = :nationalId")
                .setParameter("nationalId",nationalId)
                .getResultList();
    }


    @Override
    public List<Doctor> getDoctorByName(String name) {

        return entityManager.createQuery("FROM Doctor d Where d.bioData.firstName = :name or d.bioData.Lastname = :name or d.bioData.surName = :name")
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
