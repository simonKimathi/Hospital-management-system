package com.hospital.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    String url;
    String user;
    String pass;

    public DbConnection(String url, String user, String pass) {
        this.url = url;
        this.user = user;
        this.pass = pass;
    }

    public Connection connect(){
        Connection connection=null;
        //statement2.execute("create table if not exists patient(firtName varchar(255),LastName varchar(255),surName varchar(255),idNumber integer ,gender varchar(255),dateOfBirth varchar(255),contact varchar(255),emergencyContact varchar(255),county varchar(255),subCounty varchar(255), village varchar(255))");


        try {

            connection= DriverManager.getConnection(url,user,pass);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }
}
