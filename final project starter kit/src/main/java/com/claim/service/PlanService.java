package com.claim.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.claim.entity.Plan;
import com.claim.repository.EventsRepository;
import com.claim.repository.PlanRepository;

@Service
public class PlanService {

	@Autowired
	private PlanRepository planRepository;
	private EventsRepository eventsRepository;
	
	public void savePlan(Plan plan) {
		// TODO Auto-generated method stub
		planRepository.save(plan);
	}

	public ArrayList<Plan> getAllPlans() {
		return(ArrayList<Plan>) planRepository.findAll();
	}

	/*public Plan createPlan(String destination, int budget) {
		return eventsRepository.findEvents(destination, budget);
	}*/

}
