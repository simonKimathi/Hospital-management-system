package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.User;

import java.util.List;

public interface UserBeanI {
    String removeUser(User user);

    List<Patient> list();

    User getUser(int id);


    User getUser(User user);

    public String registerUser(User user);
}
