package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.Contact;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Hospital")
public class Hospital extends BaseEntity {

    @Embedded
    private Contact contact;

    @Column
    private  String city;

    @OneToMany(mappedBy = "hospital",cascade = CascadeType.ALL)
    private List<Patient> patientList=new ArrayList<Patient>();


    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public List<Patient> getPatientList() {
        return patientList;
    }

    public void addPatient(Patient patient){
        patient.setHospital(this);
        this.patientList.add(patient);
    }
}
