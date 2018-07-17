package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Events;
import com.claim.entity.Plan;
@Repository
public interface EventsRepository extends JpaRepository<Events, String> {
	
	/*@Query("Select event from events event where destination=:destination and budget>=:cost")
	public Plan findEvents(@Param("destination")String destination, @Param("budget")int budget);*/
}
