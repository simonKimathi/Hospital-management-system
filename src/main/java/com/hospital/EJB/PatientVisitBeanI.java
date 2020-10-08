package com.hospital.EJB;

import com.hospital.model.PatientVisits;
import com.hospital.model.Room;

import java.util.List;

public interface PatientVisitBeanI {
    public String add(PatientVisits patientVisits);

    PatientVisits findById(int id);

    String delete(int id) throws Exception;

    List<PatientVisits> list();

    List<PatientVisits> getVisitByDoctor(String id);

    List<PatientVisits> getVisitByPatient(String id);

    String deleteVisit(PatientVisits patientVisits);
}
