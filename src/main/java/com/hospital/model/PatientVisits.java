package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "hospital_visit")
public class PatientVisits extends BaseEntity {



    @ManyToOne
    private Doctor doctor;

    @ManyToOne
    private Patient patient;

    @ManyToOne
    private Room room;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date fromDate;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date toDate;

    @Column(name = "doctors_notes")
    private String doctorsNote;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getFromDate() {
        return fromDate;
    }

    public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }

    public Date getToDate() {
        return toDate;
    }

    public void setToDate(Date toDate) {
        this.toDate = toDate;
    }

    public String getDoctorsNote() {
        return doctorsNote;
    }

    public void setDoctorsNote(String doctorsNote) {
        this.doctorsNote = doctorsNote;
    }
}
