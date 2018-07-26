/*package com.claim.entity;
import java.net.URI;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.IncomingPhoneNumber;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class sms {
	 // Find your Account Sid and Token at twilio.com/user/account
	  public static final String ACCOUNT_SID = "ACb3161eddef1765036f00ae021c834b0d";
	  public static final String AUTH_TOKEN = "81de923940b499c582fbabdc8d0a4857";

	public static void main(String[] args) {
		

	        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
	        Message message = Message.creator(
	        		new PhoneNumber("+13143199626"), 
	        		new PhoneNumber("+16677716957"), 
	        		"SENDING SMS MESSAGE FROM APP").create();
	        		
	        		System.out.println(message.getSid());
	}

}
*/