package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="authorities")
public class Authorities {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@NotNull
	@Column(name="authorities_id")
	private int id;
	
	@Column(nullable=false, length=20)
	private String role;
	
	@OneToMany(mappedBy="authorities", cascade = {CascadeType.DETACH, CascadeType.MERGE, 
			CascadeType.PERSIST, CascadeType.REFRESH})
	@JsonBackReference
	private Set<User> users = new HashSet<>();
	
	

	public Authorities() {
		//super();
		// TODO Auto-generated constructor stub
	}

	public Authorities(Authorities authorities) {
		super();
		// TODO Auto-generated constructor stub
	}

	public Authorities(String role, Set<User> users) {
		this.role = role;
		this.users = users;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return ""+ id +  "";
	}

	
	
	

}
