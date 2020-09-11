package com.hospital.EJB;

import com.hospital.model.Patient;

import java.util.List;

public interface PatientBeanI {
    public String add( Patient patient);
    public List<Patient> list();
}
