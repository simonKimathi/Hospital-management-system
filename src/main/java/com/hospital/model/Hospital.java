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
/*
    "select count(p.name) from Patient p where h.name like 'meru hospital%' join p.hospital h"

    "select h from Hospital h where h.name like '%meru%'"

    "select h.contact.email from Hospital h",.getResultList();

    "select d from Doctor d where d.salary >100000 and d.salary <150000"

    "select d having d.salary > avg(d.salary) from Doctor d"

*/
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
