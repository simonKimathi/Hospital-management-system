package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "hospital_room")
public class Room extends BaseEntity implements Serializable {


    @Column
    private String roomId;

    @Column
    private String rType;

    @Column
    private String assigned;

    /*@OneToMany(mappedBy = "room",cascade = CascadeType.ALL)
    private List<Patient> patientList=new ArrayList<Patient>();*/


    public String getAssigned() {
        return assigned;
    }

    public void setAssigned(String governed) {
        this.assigned = governed;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getrType() {
        return rType;
    }

    public void setrType(String rType) {
        this.rType = rType;
    }

   /* //@JsonIgnore
    public List<Patient> getPatientList() {
        return patientList;
    }

    public void setPatientList(List<Patient> patientList) {
        this.patientList = patientList;
    }
*/
    /*public void addPatient(Patient patient){
        patient.setRoom(this);
        this.patientList.add(patient);
    }*/
}
