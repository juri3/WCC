package controller;

import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/menu/")
public class MenuController {
	
	@RequestMapping(value="list")
	public String list(){
		System.out.println("MenuController-list");
		return "menu/menuList";
	}
	
	@RequestMapping(value="add")
	public String add(){
		System.out.println("MenuController-add");
		return "menu/addMenuList";
	}
}
