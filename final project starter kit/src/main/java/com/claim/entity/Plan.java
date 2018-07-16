package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="plans")
public class Plan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="plan_id")
	private int planId;
	@Column(name="check_in")
	private String checkIn;
	@Column(name="check_out")
	private String checkOut; 
	@Column(name="destination")
	private String destination; 
	@Column(name="budget")
	private int budget;
	/**
	 * @return the checkIn
	 */
	public String getCheckIn() {
		return checkIn;
	}
	/**
	 * @param checkIn the checkIn to set
	 */
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	/**
	 * @return the checkOut
	 */
	public String getCheckOut() {
		return checkOut;
	}
	/**
	 * @param checkOut the checkOut to set
	 */
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	/**
	 * @return the destination
	 */
	public String getDestination() {
		return destination;
	}
	/**
	 * @param destination the destination to set
	 */
	public void setDestination(String destination) {
		this.destination = destination;
	}
	/**
	 * @return the budget
	 */
	public int getBudget() {
		return budget;
	}
	/**
	 * @param budget the budget to set
	 */
	public void setBudget(int budget) {
		this.budget = budget;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Plan [checkIn=" + checkIn + ", checkOut=" + checkOut + ", destination=" + destination + ", budget="
				+ budget + "]";
	}
	
	

}
