package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "hospital_user")
public class User extends BaseEntity implements Serializable {


    @Column
    String userName;

    @Column
    String email;

    @Column
    String address;

    @Column
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    /*public  String showUser(User user){
        String newPasswordShow = "";

        int countPwdSize = user.getPassword() == null? 0 : user.getPassword().length();

        while((--countPwdSize)>0)
            newPasswordShow += "*";

        return "<br/><br/>" +user.getId() + " | " + user.getUserName() + " | " + user.getAddress() + " | " + user.getEmail() + " | " + newPasswordShow + "<br/>";

    }*/
}
