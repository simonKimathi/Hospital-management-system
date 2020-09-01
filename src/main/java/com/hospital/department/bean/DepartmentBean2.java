package com.hospital.department.bean;

import com.hospital.department.annotation.SaveToDb;
import com.hospital.department.model.Department;

import java.sql.Connection;
import java.util.List;


public class DepartmentBean2 implements DepartmentBeanI {


    @Override
    public String add(Connection connection, Department department) {
        return null;
    }

    @Override
    public List<Department> list(Connection connection) {
        return null;
    }
}
