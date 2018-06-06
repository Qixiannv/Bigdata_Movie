package com.front.movie.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.service.AddTypeServiceImpl;

@Controller
public class AddTypeController {

	@Resource
	private AddTypeServiceImpl atsi;
	
	@GetMapping("/addtype")
	public String addType(@RequestParam("name")String name) {
		this.atsi.addType(name);
		return "/test";
	}
}
