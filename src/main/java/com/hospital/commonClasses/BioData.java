package com.hospital.commonClasses;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Transient;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;

@Embeddable
public class BioData implements Serializable {
    @Column
    private String firstName;

    @Column
    private String lastName;

    @Column
    private String surName;

    @Column
    private String nationalId;

    @Column
    private String DOB;

    @Column
    private String gender;

    @Transient
    private int age;

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

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        DOB=DOB.replace("/","-");
        this.DOB = DOB;
    }

    public int getAge() {
        return age;
    }

    public void setAge() {
        Period period = Period.between(LocalDate.parse(DOB), LocalDate.now());
        this.age = period.getYears();
    }
}
