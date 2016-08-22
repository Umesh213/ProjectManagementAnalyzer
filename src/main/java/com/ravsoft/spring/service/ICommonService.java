package com.ravsoft.spring.service;

import java.util.List;

import com.ravsoft.spring.model.Client;
import com.ravsoft.spring.model.Project;
import com.ravsoft.spring.model.User;

public interface ICommonService {

	// User services methods 
	public void addUser(User p);
	public void updateUser(User p);
	public List<User> listUsers();
	public User getUserById(int id);
	public void removeUser(int id);
	
	// Project Services methods
	public void addProject(Project p);
	public void updateProject(Project p);
	public List<Project> listProject();
	public Project getProjectById(int id);
	public void removeProject(int id);
	
	// Client Services methods
	public void addClient(Client p);
	public void updateClient(Client p);
	public List<Client> listClient();
	public Client getClientById(int id);
	public void removeClient(int id);
}
