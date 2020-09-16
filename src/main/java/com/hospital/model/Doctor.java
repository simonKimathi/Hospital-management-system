package com.hospital.model;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hospital_doctor")
public class Doctor extends Employee implements Serializable {

    @Column
    private String Qualification;

    @Column(name = "practice_id")
    private String practiceId;

    public String getQualification() {
        return Qualification;
    }

    public void setQualification(String qualification) {
        Qualification = qualification;
    }

    public String getPracticeId() {
        return practiceId;
    }

    public void setPracticeId(String practiceId) {
        this.practiceId = practiceId;
    }

    /*    @OneToMany(mappedBy = "doctor",cascade = CascadeType.ALL)
    private List<Patient> patientList=new ArrayList<Patient>();

    public List<Patient> getPatientList() {
        return patientList;
    }

    public void setPatientList(List<Patient> patientList) {
        this.patientList = patientList;
    }

    public void addDoctor(Patient patient){
        patient.setDoctor(this);
        this.patientList.add(patient);
    }*/
    /*@ManyToMany(cascade ={CascadeType.PERSIST,CascadeType.MERGE})
    @NotFound( action = NotFoundAction.IGNORE)
            *//*@ManyToMany(cascade = { CascadeType.ALL })
            @JoinTable(
                    name = "Employee_Project",
                    joinColumns = { @JoinColumn(name = "employee_id") },
                    inverseJoinColumns = { @JoinColumn(name = "project_id") }
            )*//*
    private List<Patient> patientlist = new ArrayList<Patient>();

    public List<Patient> getPatientlist() {
        return patientlist;
    }

    public void setPatientlist(List<Patient> patientlist) {
        this.patientlist = patientlist;
    }

    public void addPatient(Patient patient){
        patientlist.add(patient);
        patient.getDoctorList().add(this);
    }

    public void removePatient(Patient patient){
        patientlist.remove(patient);
        patient.getDoctorList().remove(this);
    }*/
}
