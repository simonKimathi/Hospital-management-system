package com.hospital.Employee.bean;


import com.hospital.Employee.model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeBean implements EmployeeBeanI {

    @Override
    public String add(Connection connection, Employee employee) {
        if (connection==null || employee==null)
            return "fail";

        try {
            PreparedStatement statement = connection.prepareStatement("insert into department(employeeId" +
                    "firstName," +
                    ",lastName" +
                    ",surName" +
                    ",gender" +
                    ",address" +
                    ",contact" +
                    ",eType" +
                    ",salary" +
                    ") values(?,?,?,?,?,?,?,?)");
            statement.setString(1,employee.getEmployeeId());
            statement.setString(2,employee.getFirstName());
            statement.setString(3,employee.getLastName());
            statement.setString(4,employee.getSurName());
            statement.setString(5,employee.getGender());
            statement.setString(6,employee.getAddress());
            statement.setString(7,employee.getContact());
            statement.setString(8,employee.geteType());
            statement.setInt(9,employee.getSalary());
            statement.executeUpdate();

        }catch (SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return "ok";
    }
    @Override
    public String addDoctor(Connection connection, Employee employee) {
        if (connection==null || employee==null)
            return "fail";

        try {
            String ddType="doctor";
            PreparedStatement statement = connection.prepareStatement("insert into department(employeeId" +
                    "firstName," +
                    ",lastName" +
                    ",surName" +
                    ",gender" +
                    ",address" +
                    ",contact" +
                    ",eType" +
                    ",salary" +
                    ") values(?,?,?,?,?,?,?,?)");
            statement.setString(1,employee.getEmployeeId());
            statement.setString(2,employee.getFirstName());
            statement.setString(3,employee.getLastName());
            statement.setString(4,employee.getSurName());
            statement.setString(5,employee.getGender());
            statement.setString(6,employee.getAddress());
            statement.setString(7,employee.getContact());
            statement.setString(8,ddType);
            statement.setInt(9,employee.getSalary());
            statement.executeUpdate();

        }catch (SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return "ok";
    }

    @Override
    public List<Employee> list(Connection connection) {
        //create array list of departments
        List<Employee> employeeList = new ArrayList<Employee>();
        try {
            //get data from database
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM department");
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(resultSet.getString("employeeId"));
                employee.setFirstName(resultSet.getString("firstName"));
                employee.setLastName(resultSet.getString("lasName"));
                employee.setSurName(resultSet.getString("surName"));
                employee.setGender(resultSet.getString("gender"));
                employee.setAddress(resultSet.getString("address"));
                employee.setContact(resultSet.getString("contact"));;
                employee.seteType(resultSet.getString("eType"));;
                employee.setSalary(resultSet.getInt("salary"));;

                employeeList.add(employee);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }
    public List<Employee> listDoctors(Connection connection) {
        //create array list of departments
        List<Employee> employeeList = new ArrayList<Employee>();
        try {
            //get data from database
            String eeTYpe="doctor";
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM department where eType="+eeTYpe);
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(resultSet.getString("employeeId"));
                employee.setFirstName(resultSet.getString("firstName"));
                employee.setLastName(resultSet.getString("lasName"));
                employee.setSurName(resultSet.getString("surName"));
                employee.setGender(resultSet.getString("gender"));
                employee.setAddress(resultSet.getString("address"));
                employee.setContact(resultSet.getString("contact"));;
                employee.seteType(resultSet.getString("eType"));;
                employee.setSalary(resultSet.getInt("salary"));;

                employeeList.add(employee);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }
    }
