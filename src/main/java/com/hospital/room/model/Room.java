package com.hospital.room.model;

public class Room {
    String id;
    String rType;
    String assigned;
    //String governed;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getrType() {
        return rType;
    }

    public void setrType(String rType) {
        this.rType = rType;
    }

    public String getAssigned() {
        return assigned;
    }

    public void setAssigned(String assigned) {
        this.assigned = assigned;
    }
}
