package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.webflow.context.ExternalContext;
import org.springframework.webflow.core.collection.ParameterMap;
import org.springframework.webflow.execution.RequestContext;

@Controller
public class EmployeeController {
	
	public void collectEmployeeData(RequestContext requestContext, ExternalContext externalContext){
		
		ParameterMap pm = requestContext.getRequestParameters();
		String name = pm.get("firstname");
		
		requestContext.getFlowScope().put("name", name);
	}
}
