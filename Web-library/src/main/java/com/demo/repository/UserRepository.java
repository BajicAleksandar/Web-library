package com.demo.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	public User findByUsername(String username);
	
	@Query(value="SELECT user.user_id, user.name, user.lastname, user.username, user.password, user.status, user.email, user.phone_number FROM user WHERE user.username LIKE %:query%",nativeQuery = true)
	public Set<User> search(String query);
	
	
	
	
	
	

}
