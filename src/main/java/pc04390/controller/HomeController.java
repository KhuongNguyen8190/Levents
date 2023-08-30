package pc04390.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class HomeController {
	@RequestMapping("index")
	public String home(){
		return "home/index";
	}
	
	@RequestMapping("index1")
	public String home1(){
		return "home/index1";
	}
	
}
