package com.demo.entity;

import java.util.Collection;
import java.util.List;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.security.core.GrantedAuthority;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="user")
@DynamicUpdate
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@NotNull
	@Column(name="user_id")
	private int id; //PK
	
	@Column(unique=true, nullable=false)
	@Size(max=45)
	private String username;
	
	@Column(nullable=false)
	@Size(max=45)
	private String password;
	
	@Column(nullable=false)
	@Size(max=70)
	private String name;
	
	@Column(nullable=false)
	@Size(max=70)
	private String lastname;
	
	@Column(nullable=false)
	@Size(max=45)
	private String phoneNumber;
	
	@Column(nullable=false)
	@Size(max=45)
	private String email;
	
	@Column
	private int status = 0;
	
	@ManyToMany(fetch=FetchType.EAGER, cascade = {CascadeType.DETACH, CascadeType.MERGE, 
			CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinTable(name="rented_books", 
	joinColumns=@JoinColumn(name="user_id"),
	inverseJoinColumns=@JoinColumn(name="book_id"))
	@JsonBackReference
	private List<Book> books;
	
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, 
			CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="authorities_id")
	@JsonBackReference
	private Authorities authorities;   // a kada stavim Set<Authorities> onda mi puca kod sa ovom greskom: 
									   //Invocation of init method failed; nested exception is org.hibernate.AnnotationException: @OneToOne or @ManyToOne on com.demo.entity.User.authorities references an unknown entity: java.util.Set
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="membership_card_id")
	private MembershipCard membershipCard;

	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String name, String lastname, String username, String password, String email, String phoneNumber, Authorities authorities, String status) {
	//	super();
		// TODO Auto-generated constructor stub
	}



	public User(@Size(max = 45) String username, @Size(max = 45) String password, @Size(max = 70) String name,
			@Size(max = 70) String lastname, @Size(max = 45) String phoneNumber, @Size(max = 45) String email,
			int status, List<Book> books, Authorities authorities, MembershipCard membershipCard) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.lastname = lastname;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.status = status;
		this.books = books;
		this.authorities = authorities;
		this.membershipCard = membershipCard;
	}



//	public User(String name, String lastname, String username, String password, String email, String phoneNumber,
//			String authorities, String status) {
//		// TODO Auto-generated constructor stub
//	}

	


//	public User(int id, String name, String lastname, String username, String password, String email, String phoneNumber, int status) {
//		// loginController - method---save
//	}


	


	public User(String username, String password, int status) {
		// konstruktor za status
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public Authorities getAuthorities() {
		return authorities;
	}



	public void setAuthorities(Authorities authorities) {
		this.authorities = authorities;
	}
	
	public String setAuthorities(String authorities) {
		return authorities;
	}



	public MembershipCard getMembershipCard() {
		return membershipCard;
	}

	public void setMembershipCard(MembershipCard membershipCard) {
		this.membershipCard = membershipCard;
		membershipCard.setUserOfMembershipFee(this);
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", lastname="
				+ lastname + ", phoneNumber=" + phoneNumber + ", email=" + email + ", status=" + status + ", books="
				+ books + "card" + membershipCard + "]";
	}



	public boolean match(String username, String password) {
		// TODO Auto-generated method stub
		return this.username.equals(username) && this.password.equals(password);
	}



	public void setStatus(String status) {
		// TODO Auto-generated method stub
		
	}
	
}