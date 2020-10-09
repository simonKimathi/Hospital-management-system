package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "hospital_medical_record")
public class MedicalRecord extends BaseEntity {

/*    @Embedded
    private PatientVitals patientVitals;*/

    @Column
    private String symptoms;

    @Column
    private String diagnosis;


    @Column
    private String prescriptions;


    @Column
    private String patientID;


    @Column
    private String visitId;

/*
    @ManyToOne()
    private Patient patient;*/
/*
    public PatientVitals getPatientVitals() {
        return patientVitals;
    }

    public void setPatientVitals(PatientVitals patientVitals) {
        this.patientVitals = patientVitals;
    }*/

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getPrescriptions() {
        return prescriptions;
    }

    public void setPrescriptions(String prescriptions) {
        this.prescriptions = prescriptions;
    }
/*
    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }*/

    public String getPatientID() {
        return patientID;
    }

    public void setPatientID(String patientID) {
        this.patientID = patientID;
    }

    public String getVisitId() {
        return visitId;
    }

    public void setVisitId(String visitId) {
        this.visitId = visitId;
    }
}
