package com.hospital.department.bean;

import com.hospital.department.annotation.SaveToDb;
import com.hospital.department.model.Department;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@SaveToDb
public class DepartmentBean implements DepartmentBeanI{


    public String add(Connection connection, Department department){
        if (connection==null || department==null)
            return "fail";

        try {
            PreparedStatement statement = connection.prepareStatement("insert into department(id,name) values(?,?)");
            statement.setString(1,department.getId());
            statement.setString(2,department.getName());
            statement.executeUpdate();

        }catch (SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return "ok";
    }

    public List<Department> list(Connection connection) {


        //create array list of departments
        List<Department> departmentList = new ArrayList<Department>();
        try {
            //get data from database
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM department");
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Department department = new Department();
                department.setId(resultSet.getString("id"));
                department.setName(resultSet.getString("name"));

                departmentList.add(department);
            }


        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }
        return departmentList;
    }


}
