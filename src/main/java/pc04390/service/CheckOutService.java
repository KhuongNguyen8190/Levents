package pc04390.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pc04390.dao.OrderDAO;
import pc04390.dao.OrderDetailDAO;
import pc04390.entity.Account;
import pc04390.entity.CartItem;
import pc04390.entity.Order;
import pc04390.entity.OrderDetail;
import pc04390.entity.Product;

@Service
public class CheckOutService {

	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	public Order order(Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for (CartItem item : shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());

			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
