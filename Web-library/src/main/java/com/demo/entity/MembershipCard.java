package com.demo.entity;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="membership_card")
public class MembershipCard {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@NotNull
	@Column(name="membership_card_id")
	private int id; //PK 
	
	@Column(length=20)
	private String lastPayment;
	
	@Column(length=20, nullable=false)
	private String dateEnlistment;
	
	@Column(nullable=false, length=20)
	private String typeOfMembershipFee;
	
	@OneToOne(mappedBy="membershipCard", cascade={CascadeType.ALL})
	private User userOfMembershipFee;

	public MembershipCard() {
		//super();
		// TODO Auto-generated constructor stub
	}

	public MembershipCard(String lastPayment, String dateEnlistment, String typeOfMembershipFee,
			User userOfMembershipFee) {
		this.lastPayment = lastPayment;
		this.dateEnlistment = dateEnlistment;
		this.typeOfMembershipFee = typeOfMembershipFee;
		this.userOfMembershipFee = userOfMembershipFee;
	}

	public MembershipCard( String dateEnlistment, String lastPayment, String typeOfMembershipFee) {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastPayment() {
		return lastPayment;
	}

	public void setLastPayment(String lastPayment) {
		this.lastPayment = lastPayment;
	}

	public String getDateEnlistment() {
		return dateEnlistment;
	}

	public void setDateEnlistment(String dateEnlistment) {
		this.dateEnlistment = dateEnlistment;
	}

	public String getTypeOfMembershipFee() {
		return typeOfMembershipFee;
	}

	public void setTypeOfMembershipFee(String typeOfMembershipFee) {
		this.typeOfMembershipFee = typeOfMembershipFee;
	}

	public User getUserOfMembershipFee() {
		return userOfMembershipFee;
	}

	public void setUserOfMembershipFee(User userOfMembershipFee) {
		this.userOfMembershipFee = userOfMembershipFee;
		
	}

	@Override
	public String toString() {
		return "MembershipCard [id=" + id + "" + lastPayment + "" + userOfMembershipFee + "" + typeOfMembershipFee + "" + dateEnlistment + "]";
	}

	


}
