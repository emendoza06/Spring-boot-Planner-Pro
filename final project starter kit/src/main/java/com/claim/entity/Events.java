package com.claim.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="events")
public class Events {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="eventId")
	private int eventId;
	@Column(name="destination")
	private String destination; 
	@Column(name="cost")
	private int cost; 
	@Column(name="event")
	private String event; 
	
	
	

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return event + " costs $" + cost;
	}



	public Events(String destination, int cost, String event) {
		super();
		this.destination = destination;
		this.cost = cost;
		this.event = event;
		
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
	public int getCost() {
		return cost;
	}



	/**
	 * @param budget the budget to set
	 */
	public void setCost(int cost) {
		this.cost = cost;
	}



	/**
	 * @return the event
	 */
	public String getEvent() {
		return event;
	}



	/**
	 * @param event the event to set
	 */
	public void setEvent(String event) {
		this.event = event;
	}



	

}
