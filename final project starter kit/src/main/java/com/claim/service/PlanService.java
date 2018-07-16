package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Plan;
import com.claim.repository.PlanRepository;

@Service
public class PlanService {

	@Autowired
	private PlanRepository planRepository;
	
	public void savePlan(Plan plan) {
		// TODO Auto-generated method stub
		planRepository.save(plan);
	}

}
