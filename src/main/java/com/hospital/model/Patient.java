package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import com.hospital.commonClasses.Gender;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hospital_patient")
public class Patient extends BaseEntity implements Serializable {


    @Embedded
    private BioData bioData;

    @Enumerated(EnumType.ORDINAL)
    private Gender gender;

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
    @NotFound( action = NotFoundAction.IGNORE)
    private Room room;

    @Transient
    private int roomId;

    @ManyToOne(cascade = CascadeType.ALL)
    @NotFound( action = NotFoundAction.IGNORE)
    private Hospital hospital;



    @Transient
    private int hospitalId;

    @OneToMany(mappedBy = "medicalRecord",cascade = CascadeType.ALL)
    private List<MedicalRecord> medicalRecordsList=new ArrayList<MedicalRecord>();



/*    @ManyToOne(cascade = CascadeType.ALL)
    @NotFound( action = NotFoundAction.IGNORE)
    private Doctor doctor ;*/



    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
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

    public BioData getBioData() {
        return bioData;
    }

    public void setBioData(BioData bioData) {
        this.bioData = bioData;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Contact getContact() {
        return contact;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public int getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(int hospitalId) {
        this.hospitalId = hospitalId;
    }

    /*    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }*/
}
