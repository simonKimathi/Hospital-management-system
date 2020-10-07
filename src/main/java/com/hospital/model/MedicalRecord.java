package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Hospital_medical_record")
public class MedicalRecord extends BaseEntity {

    @Embedded
    private PatientVitals patientVitals;

    @Column
    private String Examination;

    @Column
    private String Diagnosis;


    @Column
    private String prescriptions;


    @ManyToOne()
    private Patient patient;

    public PatientVitals getPatientVitals() {
        return patientVitals;
    }

    public void setPatientVitals(PatientVitals patientVitals) {
        this.patientVitals = patientVitals;
    }

    public String getExamination() {
        return Examination;
    }

    public void setExamination(String examination) {
        Examination = examination;
    }

    public String getDiagnosis() {
        return Diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        Diagnosis = diagnosis;
    }

    public String getPrescriptions() {
        return prescriptions;
    }

    public void setPrescriptions(String prescriptions) {
        this.prescriptions = prescriptions;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
