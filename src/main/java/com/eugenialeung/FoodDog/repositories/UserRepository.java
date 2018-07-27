package com.eugenialeung.FoodDog.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eugenialeung.FoodDog.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	User findByUsername(String username);
	List<User> findAll();
	
	@Query("SELECT u, r FROM User u JOIN u.roles r")
	List<Object[]> getAllUsers();
}
