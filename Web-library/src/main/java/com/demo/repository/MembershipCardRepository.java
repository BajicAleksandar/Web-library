package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entity.MembershipCard;

public interface MembershipCardRepository extends JpaRepository< MembershipCard, Integer> {

}
