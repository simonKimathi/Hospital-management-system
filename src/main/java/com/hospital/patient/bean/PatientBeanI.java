package com.hospital.patient.bean;

import com.hospital.Employee.model.Employee;
import com.hospital.patient.model.Patient;

import java.sql.Connection;
import java.util.List;

public interface PatientBeanI {
    public String add(Connection connection, Patient patient);
    public List<Patient> list(Connection connection);
}
