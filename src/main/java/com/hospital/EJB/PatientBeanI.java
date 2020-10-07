package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.User;

import java.util.List;

public interface PatientBeanI {
    public String add( Patient patient);
    public List<Patient> list();

    List<Patient> getPatientById(String Id);

    List<Patient> getPatientByName(String name);

    String removePatient(Patient patient);
}
