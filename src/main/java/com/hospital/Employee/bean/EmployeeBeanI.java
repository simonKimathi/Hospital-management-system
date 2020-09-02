package com.hospital.Employee.bean;

import com.hospital.Employee.model.Employee;

import java.sql.Connection;
import java.util.List;

public interface EmployeeBeanI {
    public String add(Connection connection, Employee employee);
    public String addDoctor(Connection connection, Employee employee);
    public List<Employee> list(Connection connection);
    public List<Employee> listDoctors(Connection connection);
}
