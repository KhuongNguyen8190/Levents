package pc04390.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pc04390.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
	
   Optional<Account> findByUsername(String username);
   
	@Query("SELECT o FROM Account o WHERE o.fullname LIKE ?1")
	Page<Account> findByKeywords(String keywords, Pageable pageable);
	
	@Query("SELECT o FROM Account o")
	Page<Account> findAll(Pageable pageable);
}
