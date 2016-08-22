package com.ravsoft.spring.service;

import java.util.List;

import com.ravsoft.spring.dao.ICommonDAO;
import com.ravsoft.spring.model.Client;
import com.ravsoft.spring.model.Project;
import com.ravsoft.spring.model.User;

public class CommonServiceImpl implements ICommonService{
	
	private ICommonDAO commonDAO;

	public void setCommonDAO(ICommonDAO commonDAO) {
		this.commonDAO = commonDAO;
	}

	@Override
	public void addUser(User p) {
		this.commonDAO.addUser(p);
	}

	@Override
	public void updateUser(User p) {
		this.commonDAO.updateUser(p);
	}

	@Override
	public List<User> listUsers() {
		return this.commonDAO.listUsers();
	}

	@Override
	public User getUserById(int id) {
		return this.commonDAO.getUserById(id);
	}

	@Override
	public void removeUser(int id) {
		this.commonDAO.removeUser(id);
	}

	@Override
	public void addProject(Project p) {
		this.commonDAO.addProject(p);
	}

	@Override
	public void updateProject(Project p) {
		this.commonDAO.updateProject(p);
	}

	@Override
	public List<Project> listProject() {
		return this.commonDAO.listProject();
	}

	@Override
	public Project getProjectById(int id) {
		return this.commonDAO.getProjectById(id);
	}

	@Override
	public void removeProject(int id) {
		this.commonDAO.removeProject(id);
	}
	
	@Override
	public void addClient(Client p) {
		this.commonDAO.addClient(p);
	}

	@Override
	public void updateClient(Client p) {
		this.commonDAO.updateClient(p);
	}

	@Override
	public List<Client> listClient() {
		return this.commonDAO.listClient();
	}

	@Override
	public Client getClientById(int id) {
		return this.commonDAO.getClientById(id);
	}

	@Override
	public void removeClient(int id) {
		this.commonDAO.removeClient(id);
	}
}
