package de.demo3;

import java.io.Serializable;

public class Formbean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String title;
	private String firstname;
	private String lastname;
	private String email;
	private String yearOfBirth;
	private String gender;
	private String message;
	private Boolean contactRequested;
	private String[] interestedTopics;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getYearOfBirth() {
		return yearOfBirth;
	}
	public void setYearOfBirth(String yearOfBirth) {
		this.yearOfBirth = yearOfBirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Boolean getContactRequested() {
		return contactRequested;
	}
	public void setContactRequested(Boolean contactRequested) {
		this.contactRequested = contactRequested;
	}
	public String[] getInterestedTopics() {
		return interestedTopics;
	}
	public void setInterestedTopics(String[] interestedTopics) {
		this.interestedTopics = interestedTopics;
	}
}