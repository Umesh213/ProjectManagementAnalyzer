package com.ravsoft.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 * @author Umesh Kumar
 *
 */
@Entity
@Table(name="CLIENT")
public class Client {

	@Id
	@Column(name="clientId")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int clientId;
	
	@Column(name="guid")
	private String guid;
	
	@Column(name="clientName")
	private String clientName;
	
	@Column(name="clientUrl")
	private String clientUrl;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientUrl() {
		return clientUrl;
	}

	public void setClientUrl(String clientUrl) {
		this.clientUrl = clientUrl;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString(){
		return "clientId="+clientId+", guid="+guid+", clientName="+clientName+ ", clientUrl="+clientUrl+ ", emailId="+emailId+ ", phoneNumber="+phoneNumber;
	}
}
