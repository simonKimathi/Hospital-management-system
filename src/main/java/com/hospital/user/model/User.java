package com.hospital.user.model;

import java.io.Serializable;

public class User implements Serializable {
    String id;
    String name;
    String email;
    String address;
    String password;

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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public  String showUser(User user){
        String newPasswordShow = "";

        int countPwdSize = user.getPassword() == null? 0 : user.getPassword().length();

        while((--countPwdSize)>0)
            newPasswordShow += "*";

        return "<br/><br/>" +user.getId() + " | " + user.getName() + " | " + user.getAddress() + " | " + user.getEmail() + " | " + newPasswordShow + "<br/>";

    }
}
