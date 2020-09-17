package com.hospital.EJB;

import com.hospital.model.User;

public interface UserBeanI {
    String removeUser(User user);

    User getUser(int id);

    User getUser(String username, String pwd);

    public String registerUser(User user);
}
