package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="book")
public class Book {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@NotNull
	@Column(name="book_id")
	private int id;
	
	@NotNull
	@Column
	@Size(max=45)
	private String title;
	
	
	@Column
	@Size(max=250)
	private String description;
	
	@NotNull
	@Column
	private String author;
	
	@ManyToMany(mappedBy = "books")
    @JsonBackReference
	private Set<User> users = new HashSet();

	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	


	public Book(@NotNull String author) {
		this.author = author;
	}




	public Book(@NotNull @Size(max = 45) String title, @Size(max = 250) String description, @NotNull String author,
			Set<User> users) {
		this.title = title;
		this.description = description;
		this.author = author;
		this.users = users;
	}


	public Book(String title, String description, String author) {
		// konstruktor za dodavanje knjiga (book controller)
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public Set<User> getUsers() {
		return users;
	}


	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	
	

}
