package com.hospital.commonClasses;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class BioData {
    @Column
    private String firstName;

    @Column
    private String lastName;

    @Column
    private String surName;

    @Column
    private int nationalId;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public int getNationalId() {
        return nationalId;
    }

    public void setNationalId(int nationalId) {
        this.nationalId = nationalId;
    }
}
