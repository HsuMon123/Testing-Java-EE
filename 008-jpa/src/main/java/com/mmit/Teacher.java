package com.mmit;

import java.io.Serializable;
import javax.persistence.*;
import static javax.persistence.EnumType.STRING;
import static javax.persistence.FetchType.EAGER;
import static javax.persistence.FetchType.LAZY;

/**
 * Entity implementation class for Entity: Teacher
 *
 */
@Entity

public class Teacher implements Serializable {

	   
	@Id
	private int id;
	private String name;
	private String email;
	@Enumerated(STRING)
	@Basic(fetch = LAZY)
	private Position role;
	
	@Embedded
	private Address address;
	
	private static final long serialVersionUID = 1L;
	
	public enum Position{
		Tutor,Lecture,Professor
	}

	public Teacher() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
   
}
