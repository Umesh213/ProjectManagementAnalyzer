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
@Table(name="PROJECT")
public class Project {

	@Id
	@Column(name="pid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pid;
	
	@Column(name="guid")
	private String guid;
	
	@Column(name="projectName")
	private String projectName;
	
	@Column(name="description")
	private String description;
	
	@Column(name="shortName")
	private String shortName;
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	
	
	@Override
	public String toString(){
		return "pid="+pid+", guid="+guid+", projectName="+projectName+ ", description="+description+ ", shortName="+shortName;
	}
}
