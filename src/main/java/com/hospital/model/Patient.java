package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "hospital_patient")
public class Patient extends BaseEntity {


    @Embedded
    private BioData bioData;

/*    @Enumerated(EnumType.ORDINAL)
    private Gender gender;*/

    @Embedded
    private Contact contact;

    @Column
    private String DOB;

    @Column
    private String emergencyContact;

    @Column
    private String county;

    @Column
    private String subCounty;

    @Column
    private String village;

    @ManyToOne(cascade = CascadeType.ALL)
    @NotFound(action = NotFoundAction.IGNORE)
    private Hospital hospital;

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

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        DOB=DOB.replace("/","-");
        this.DOB = DOB;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getSubCounty() {
        return subCounty;
    }

    public void setSubCounty(String subCounty) {
        this.subCounty = subCounty;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }
}