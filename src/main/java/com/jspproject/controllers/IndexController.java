package com.jspproject.controllers;

import com.jspproject.models.Employee;
import com.jspproject.services.IEmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class IndexController {

    private final IEmployeeService employeeService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String start(ModelMap model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.put("employees", employees);
        return "index";
    }

    @RequestMapping(value = "/add-employee", method = RequestMethod.GET)
    public String showAddEmployee() {
        return "add-employee";
    }

    @RequestMapping(value = "/add-employee", method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute("employeeForm") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit-employee", method = RequestMethod.GET)
    public String showEditEmployee(@RequestParam Long idEmployee, ModelMap model){
        Employee employee = employeeService.findEmployeeById(idEmployee);
        model.put("employee", employee);
        return "edit-employee";
    }

    @RequestMapping(value = "/edit-employee", method = RequestMethod.POST)
    public String editEmployee(@ModelAttribute("employeeForm") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete-employee", method = RequestMethod.GET)
    public String deleteEmployee(@RequestParam Long idEmployee) {
        Employee employee = new Employee();
        employee.setIdEmployee(idEmployee);
        employeeService.deleteEmployee(employee);
        return "redirect:/";
    }

}
