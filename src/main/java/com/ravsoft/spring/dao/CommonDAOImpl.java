package com.ravsoft.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

import com.ravsoft.spring.model.Client;
import com.ravsoft.spring.model.Project;
import com.ravsoft.spring.model.User;

public class CommonDAOImpl implements ICommonDAO{


	
	private static final Logger logger = LoggerFactory.getLogger(CommonDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	@Transactional
	public void addUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("User saved successfully, User Details="+p);
	}

	@Override
	@Transactional
	public void updateUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("User updated successfully, User Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<User> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> personsList = session.createQuery("from User").list();
		for(User p : personsList){
			logger.info("User List::"+p);
		}
		return personsList;
	}

	@Override
	@Transactional
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		User p = (User) session.load(User.class, new Integer(id));
		logger.info("User loaded successfully, User details="+p);
		return p;
	}

	@Override
	@Transactional
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User p = (User) session.load(User.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("User deleted successfully, user details="+p);
	}


	
	@Override
	@Transactional
	public void addProject(Project p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Project saved successfully, project Details="+p);
	}

	@Override
	@Transactional
	public void updateProject(Project p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Project updated successfully, project Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Project> listProject() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Project> projectList = session.createQuery("from Project").list();
		for(Project p : projectList){
			logger.info("Project List::"+p);
		}
		return projectList;
	}

	@Override
	@Transactional
	public Project getProjectById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Project p = (Project) session.load(Project.class, new Integer(id));
		logger.info("Project loaded successfully, project details="+p);
		return p;
	}

	@Override
	@Transactional
	public void removeProject(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Project p = (Project) session.load(Project.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Project deleted successfully, project details="+p);
	}
	
	
	@Override
	@Transactional
	public void addClient(Client p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Client saved successfully, Client Details="+p);
	}

	@Override
	@Transactional
	public void updateClient(Client p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Client updated successfully, Client Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Client> listClient() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Client> clientList = session.createQuery("from Client").list();
		for(Client p : clientList){
			logger.info("Client List::"+p);
		}
		return clientList;
	}

	@Override
	@Transactional
	public Client getClientById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Client p = (Client) session.load(Client.class, new Integer(id));
		logger.info("Client loaded successfully, client details="+p);
		return p;
	}

	@Override
	@Transactional
	public void removeClient(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Client p = (Client) session.load(Client.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Client deleted successfully, client details="+p);
	}
}
