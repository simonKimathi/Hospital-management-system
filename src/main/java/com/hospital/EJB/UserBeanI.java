package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.User;

import java.util.List;

public interface UserBeanI {
    String removeUser(User user);

    List<User> list();

    User getUserByUserName(String userName);

    User getUserByName(String name);

    User getUser(User user);

    User changePassword(User user);

    String changePassword(String user, String p);

    public String registerUser(User user);
}
