package pc04390.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pc04390.entity.OrderDetail;

public interface OrderDetailDAO  extends JpaRepository<OrderDetail, Long>{
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	Page<OrderDetail> findByOrder(Long id, Pageable pageable);
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderID(Long orderid);
}
