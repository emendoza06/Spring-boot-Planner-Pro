package com.claim.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Event;

@Repository
public interface EventRepository extends JpaRepository<Event, String> {

	@Query(value="SELECT event FROM plannerpro.events " + 
			"Inner join plannerpro.plans ON plannerpro.events.destination=plannerpro.plans.destination", nativeQuery=true)
	public ArrayList<Event> findEvents();

	@Query("SELECT E FROM Event E where destination=:destination")
	public ArrayList<Event> findEventsByDestination(@Param("destination")String destination);
		
	

	@Query("SELECT E FROM Event E where destination=:destination and cost<=:cost")
	public ArrayList<Event> findEventsByDestinationAndBudget(@Param("destination")String destination, @Param("cost")int cost);
	
}
	
	
