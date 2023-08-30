package pc04390.controller.admin;

import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pc04390.dao.AccountDAO;
import pc04390.dao.OrderDAO;
import pc04390.dao.OrderDetailDAO;
import pc04390.dao.ProductDAO;
import pc04390.entity.Order;
import pc04390.utils.CookieService;
import pc04390.utils.ParamService;
import pc04390.utils.SessionService;

@RequestMapping("admin")
@Controller
public class ReportController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;	
	
	@Autowired
	ProductDAO proDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("reportOrderByDate")
	public String reportOrderByDate(Model model) {
		return "admin/reportOrderByDate";
	}
	
	
	@PostMapping("reportOrderByDate")
	public String reportByDate(Model model, @RequestParam("p") Optional<Integer> p) {
		Date firstDate = paramService.getDate("firstDate", "MM-dd-yyyy");
		Date lastDate = paramService.getDate("lastDate", "MM-dd-yyyy");
		sessionService.set("firstDate", firstDate);
		sessionService.set("lastDate", lastDate);
		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
		Page<Order> page = orderDAO.findOrderByDate(firstDate, lastDate, pageable);
		model.addAttribute("page", page);
		return "admin/reportOrderByDate";
	}
}
