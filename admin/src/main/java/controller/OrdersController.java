package controller;

import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/orders/")
public class OrdersController {
	
	@RequestMapping(value="list")
	public String list(){
		System.out.println("OrdersController-list");
		return "orders/ordersList";
	}
	
	@RequestMapping(value="add")
	public String add(){
		System.out.println("OrdersController-add");
		return "orders/addOrdersList";
	}
}
