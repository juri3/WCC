package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="main")
	public String main(){
		System.out.println("MainController-main");
		return "main";
	}
	@RequestMapping(value = "login")
	public String member_loginForm() throws Exception{
		System.out.println("MainController-login");
		return "member/sign-in";
	}
}

