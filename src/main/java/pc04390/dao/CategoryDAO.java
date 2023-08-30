package pc04390.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import pc04390.entity.Category;



public interface CategoryDAO extends JpaRepository<Category,String>{
}
