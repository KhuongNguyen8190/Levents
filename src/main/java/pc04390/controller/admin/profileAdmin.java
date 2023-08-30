package pc04390.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class profileAdmin {

	@RequestMapping("admin/profile")
	public String index2() {
		return "admin/profile";
	}
}
