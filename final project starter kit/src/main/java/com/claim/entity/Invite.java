package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="invite")
public class Invite {
	
	@Id
	@Column(name="email")
	private String email; 
	@Column(name="phoneNumber")
	private String phoneNumber;
	@Column(name="guestName")
	private String guestName;
	
	 public static final String ACCOUNT_SID = "ACb3161eddef1765036f00ae021c834b0d";
	 public static final String AUTH_TOKEN = "81de923940b499c582fbabdc8d0a4857";
	/**
	 * @return the accountSid
	 */
	public String getAccountSid() {
		return ACCOUNT_SID;
	}
	/**
	 * @return the authToken
	 */
	public String getAuthToken() {
		return AUTH_TOKEN;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}
	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	/**
	 * @return the guestName
	 */
	public String getGuestName() {
		return guestName;
	}
	/**
	 * @param guestName the guestName to set
	 */
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Invite [email=" + email + ", phoneNumber=" + phoneNumber + ", guestName="
				+ guestName + "]";
	}
	
	

}
