package com.mmit;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.Column;
import javax.persistence.Enumerated;
import static javax.persistence.EnumType.STRING;
import static javax.persistence.TemporalType.DATE;

@Entity

public class CourseEntity implements Serializable {

private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;
	@Column(nullable = false)
	private String coursename;
	private int price;
	@Enumerated(STRING)
	private level role;
	private int duration;
	
	@Temporal(DATE)
	private Date startDate;
	
	public enum level{
		Basic,Intermediate,Advance
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public level getRole() {
		return role;
	}

	public void setRole(level role) {
		this.role = role;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	
}
