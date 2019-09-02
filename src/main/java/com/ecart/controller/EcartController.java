package com.ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class EcartController {

	@GetMapping("/home")
	public String menu() {
		return "home";
	}

	@GetMapping("/")
	public String sample() {
		return "home";
	}

}
