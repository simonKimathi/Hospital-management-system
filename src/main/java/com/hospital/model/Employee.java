package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;

@MappedSuperclass
public abstract class Employee extends BaseEntity {

    @Embedded
    private BioData bioData;

    /*@Enumerated(EnumType.ORDINAL)
    private Gender gender;*/



    @Embedded
    private Contact contact;


    @Column
    private String roomAssigned;


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

    public String getRoomAssigned() {
        return roomAssigned;
    }

    public void setRoomAssigned(String roomAssigned) {
        this.roomAssigned = roomAssigned;
    }

}
