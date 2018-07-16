package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.claim.entity.Plan;

public interface PlanRepository extends JpaRepository<Plan, String> {
	

}
