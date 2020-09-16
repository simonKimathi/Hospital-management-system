package com.hospital.EJB;

import com.hospital.model.Doctor;

import java.util.List;

public interface DoctorBeanI {
    public String add(Doctor doctor);
    public List<Doctor> list();
}
