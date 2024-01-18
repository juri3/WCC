package controller;

import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/admin")
public class IndexController {

	@RequestMapping(value="/main")
	public String main(){
		System.out.println("index controller1");
		return "main";
	}
}
