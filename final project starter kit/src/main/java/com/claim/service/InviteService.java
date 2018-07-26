package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Invite;
import com.claim.entity.Plan;
import com.claim.repository.InviteRepository;

import java.net.URI;
import java.util.ArrayList;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.IncomingPhoneNumber;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
@Service
public class InviteService {
	
	@Autowired
	private InviteRepository inviteRepository;

	public void sendInvite(Invite invite) {
		  
		  Twilio.init(invite.getAccountSid(), invite.getAuthToken());
	        Message message = Message.creator(
	        		new PhoneNumber("+1" + invite.getPhoneNumber()), 
	        		new PhoneNumber("+16677716957"), 
	        		"USER has invited you to be part of their DESTINATION plan").create();
	        		
	        		System.out.println(message.getSid());
	}

	public ArrayList<Invite> getAllInvited() {
		return(ArrayList<Invite>) inviteRepository.findAll();
	}

	public void saveInvite(Invite invite) {
		inviteRepository.save(invite);
		
	}
	

}
