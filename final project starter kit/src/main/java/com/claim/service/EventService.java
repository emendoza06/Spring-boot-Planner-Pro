package com.claim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Event;
import com.claim.entity.Plan;
import com.claim.repository.EventRepository;


@Service
public class EventService {
	
	@Autowired
	private EventRepository eventsRepository;


	public ArrayList<Event> getAll()
	{
		return (ArrayList<Event>) eventsRepository.findAll();
	}


	public ArrayList<Event> findEvents()
	{
		return (ArrayList<Event>) eventsRepository.findEvents();
	}


	public ArrayList<Event> findEventsByDestination(String destination) {
		// TODO Auto-generated method stub
		return eventsRepository.findEventsByDestination(destination);
	}
	
	public ArrayList<Event> findEventsByDestinationAndBudget(String destination, int budget){ 
		return eventsRepository.findEventsByDestinationAndBudget(destination, budget);
	}
	

}
