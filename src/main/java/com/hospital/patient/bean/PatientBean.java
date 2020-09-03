package com.hospital.patient.bean;

import com.hospital.patient.model.Patient;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PatientBean implements PatientBeanI {

    @Override
    public String add(Connection connection, Patient patient) {
        if (connection==null || patient==null)
            return "fail";

        try {
            PreparedStatement statement = connection.prepareStatement("insert into patient(firstName" +
                    ",lastName" +
                    ",surName" +
                    ",id" +
                    ",gender" +
                    ",DOB" +
                    ",contact" +
                    ",emergencyContact" +
                    ",county" +
                    ",subCounty" +
                    ",village) " +
                    "values(?,?,?,?,?,?,?,?,?,?,?)");
            statement.setString(1,patient.getFirstName());
            statement.setString(2,patient.getLastName());
            statement.setString(3,patient.getSurName());
            statement.setInt(4,patient.getId());
            statement.setString(5,patient.getGender());
            statement.setString(6,patient.getDOB());
            statement.setString(7,patient.getContact());
            statement.setString(8,patient.getEmergencyContact());
            statement.setString(9,patient.getCounty());
            statement.setString(10,patient.getSubCounty());
            statement.setString(11,patient.getVillage());
            statement.executeUpdate();

        }catch (SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return "ok";
    }

    @Override
    public List<Patient> list(Connection connection) {
        //create array list of departments
        List<Patient> patientList = new ArrayList<Patient>();
        try {
            //get data from database
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM department");
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Patient patient = new Patient();
                patient.setId(resultSet.getInt("id"));
                patient.setFirstName(resultSet.getString("firstName"));
                patient.setLastName(resultSet.getString("lasName"));
                patient.setSurName(resultSet.getString("surName"));
                patient.setGender(resultSet.getString("gender"));
                patient.setDOB(resultSet.getString("DOB"));
                patient.setContact(resultSet.getString("contact"));
                patient.setEmergencyContact(resultSet.getString("emergencyContact"));
                patient.setCounty(resultSet.getString("county"));
                patient.setSubCounty(resultSet.getString("subCounty"));
                patient.setVillage(resultSet.getString("village"));

                patientList.add(patient);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return patientList;
    }
}
