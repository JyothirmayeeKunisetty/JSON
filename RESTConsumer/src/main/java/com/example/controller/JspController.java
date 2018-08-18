package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.example.beans.Customer;
import com.example.beans.Message;

@Controller
public class JspController {

	@RequestMapping(value="/successmessage_forgetPassword")
	public String showWelcomePage(ModelMap model){
		
		RestTemplate restTemplate = new RestTemplate();
		Customer message = restTemplate.getForObject("http://localhost:5555/passwordRetrieve.json", Customer.class);
		System.out.println(message);
		model.put("customer", message);
		return "successmessage_forgetPassword";
	}
}
