package com.hospital.EJB;

import com.hospital.model.Doctor;
import com.hospital.model.Patient;

import java.util.List;

public interface DoctorBeanI {
    public String add(Doctor doctor);
    public List<Doctor> list();

    List<Doctor> getDoctorById(String nationalId);

    List<Doctor> getDoctorByName(String name);

    List<Patient> getAllDoctorsPatients(String name);

    List<Patient> getAttendedDoctorsPatients(String name);

    List<Patient> getUnattendedDoctorsPatients(String name);

    String removeDoctor(Doctor doctor);
}
