package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.claim.entity.Invite;

public interface InviteRepository extends JpaRepository<Invite, String> {

}
