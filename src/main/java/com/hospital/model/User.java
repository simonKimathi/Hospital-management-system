package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;

import javax.persistence.*;

@Entity
@Table(name = "hospital_user")
public class User extends BaseEntity{

    @Embedded
    private BioData bioData;


    @Embedded
    private Contact contact;

    @Column
    String userName;


    @Column
    String specialty;

    @Column
    String designation;


    @Column
    String role;


    @Column
    String password;

    @Transient
    Encription encryption;

    public BioData getBioData() {
        return bioData;
    }

    public void setBioData(BioData bioData) {
        this.bioData = bioData;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
