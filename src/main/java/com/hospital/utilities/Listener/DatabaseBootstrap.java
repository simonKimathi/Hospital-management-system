package com.hospital.utilities.Listener;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebListener
public class DatabaseBootstrap implements ServletContextListener {

    @Resource(lookup = "java:jboss/datasources/mrs")
    private DataSource dataSource;

    public void contextInitialized(ServletContextEvent sce) {

        Statement departmentStatement = null;
        Statement patientStatement = null;
        Statement employeeStatement = null;
        Statement roomStatement = null;

        try {
            //connect statement to datasource

            Connection connection=dataSource.getConnection();

            departmentStatement = connection.createStatement();

            patientStatement = connection.createStatement();
            employeeStatement = connection.createStatement();
            roomStatement = connection.createStatement();

            //create tables if not exists
            System.out.println("INFO: Creating tables");

            departmentStatement.execute("create table if not exists department(id varchar(255), name varchar(255))");

            patientStatement.execute("create table if not exists patient(firtName varchar(255),LastName varchar(255),surName varchar(255),id integer ,gender varchar(255),DOB varchar(255),contact varchar(255),emergencyContact varchar(255),county varchar(255),subCounty varchar(255), village varchar(255))");

            employeeStatement.execute("create table if not exists employee(employeeId varchar(255),firtName varchar(255),LastName varchar(255),surName varchar(255),gender varchar(255),address varchar(255),contact varchar(255),eType varchar(255),salary integer)");

            roomStatement.execute("create table if not exists room(id varchar(255), name varchar(255), rType varchar(255),assigned varchar(255) DEFAULT 'vacant')");

            sce.getServletContext().setAttribute("dbConnection", connection);


        }catch (SQLException sqEx){
            sqEx.printStackTrace();
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        Connection connection = (Connection) sce.getServletContext().getAttribute("dbConnection");

        if (connection != null){
            try{
                connection.close();
            }catch (SQLException sqlEx){
                sqlEx.printStackTrace();
            }
        }

    }
}
