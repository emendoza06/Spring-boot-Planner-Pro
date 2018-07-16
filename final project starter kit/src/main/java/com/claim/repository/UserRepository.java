package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, String> {
	
	@Query("Select U from User U where email=:email and password=:password")
	public User login (@Param("email") String email, @Param("password")String password);

}
