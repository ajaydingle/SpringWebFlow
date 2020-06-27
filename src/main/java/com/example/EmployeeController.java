package com.example;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.webflow.context.ExternalContext;
import org.springframework.webflow.core.collection.ParameterMap;
import org.springframework.webflow.execution.RequestContext;

@Controller
public class EmployeeController {
	
	public void collectEmployeeData(RequestContext requestContext, ExternalContext externalContext){
		
		ParameterMap pm = requestContext.getRequestParameters();
		String name = pm.get("firstname");
		String age = pm.get("age");
		String dob = pm.get("dob");
		String gender = pm.get("gender");
		String city = pm.get("city");
		String email = pm.get("email");
		
		Employee emp = new Employee();
		emp.setName(name);
		emp.setAge(age);
		emp.setDob(dob);
		emp.setGender(gender);
		emp.setCity(city);
		emp.setEmail(email);
		
		List<Employee> employeeList = new ArrayList<Employee>();
		employeeList.add(emp);
		
		requestContext.getFlowScope().put("employeeList", employeeList);
	}
	
	public List<String> genderList(RequestContext requestContext, ExternalContext externalContext){
		List<String> genderList = new ArrayList<String>();
		genderList.add("Male");
		genderList.add("Female");
		genderList.add("Other");
		
		requestContext.getFlowScope().put("genderList", genderList);
		
		return genderList;
	}
}
