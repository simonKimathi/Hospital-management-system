package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.PatientVisits;
import com.hospital.model.User;

import java.util.List;

public interface PatientBeanI {
    String add( Patient patient);


    List<Patient> list();


    long count();

    long todaysCount();

    List<Patient> getPatientById(String Id);

    List<Patient> getPatientByName(String name);

    String removePatient(Patient patient);
}
