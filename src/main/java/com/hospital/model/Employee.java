package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import com.hospital.commonClasses.Gender;

import javax.persistence.*;
import java.io.Serializable;

@MappedSuperclass
public abstract class Employee extends BaseEntity implements Serializable {

    @Embedded
    private BioData bioData;

    @Enumerated(EnumType.ORDINAL)
    private Gender gender;



    @Embedded
    private Contact contact;


    @Column
    private String roomAssigned;

    @Column
    private int salary;

    public BioData getBioData() {
        return bioData;
    }

    public void setBioData(BioData bioData) {
        this.bioData = bioData;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public String getRoomAssigned() {
        return roomAssigned;
    }

    public void setRoomAssigned(String roomAssigned) {
        this.roomAssigned = roomAssigned;
    }



    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
