package com.hospital.commonClasses;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Contact {
    @Column
    private String contact;

    @Column
    private String email;

    @Column
    private String address;

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
