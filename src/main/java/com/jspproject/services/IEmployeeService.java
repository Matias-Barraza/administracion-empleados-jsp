package com.jspproject.services;

import com.jspproject.models.Employee;

import java.util.List;

public interface IEmployeeService {

    public List<Employee> getAllEmployees();

    public Employee findEmployeeById(Long idEmployee);

    public void saveEmployee(Employee employee);

    public void deleteEmployee(Employee employee);

}
