package com.hospital.EJB;

import com.hospital.model.PatientVisits;
import com.hospital.model.Room;

import java.util.List;

public interface PatientVisitBeanI {
    public String add(PatientVisits patientVisits);

    PatientVisits findById(int id);

    String delete(int id) throws Exception;

    List<PatientVisits> list();


    long todaysCount();

    List<PatientVisits> getVisitByDoctor(String id);

    List<PatientVisits> getVisitByPatient(String id);


    List<PatientVisits> doctorsPendingPatients(String id);

    List<PatientVisits> doctorTodayPatients(String id);

    List<PatientVisits> patientVisits(String id);

    List<PatientVisits> patientVisitsInProgress(String id);

    String deleteVisit(PatientVisits patientVisits);
}
