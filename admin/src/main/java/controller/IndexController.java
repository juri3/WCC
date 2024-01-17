package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Brand;
import service.BrandRepository;

@Controller
public class IndexController {
	@Autowired
	BrandRepository service;
	@RequestMapping(value="/index")
	public String index(){
		return "index";
	}
}