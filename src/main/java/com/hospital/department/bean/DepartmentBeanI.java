package com.hospital.department.bean;

import com.hospital.department.model.Department;

import java.sql.Connection;
import java.util.List;

public interface DepartmentBeanI {
    public String add(Connection connection, Department department);
    public List<Department> list(Connection connection);
}
