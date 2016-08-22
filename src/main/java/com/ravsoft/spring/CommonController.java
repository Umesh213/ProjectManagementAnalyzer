package com.ravsoft.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ravsoft.spring.model.Client;
import com.ravsoft.spring.model.Project;
import com.ravsoft.spring.model.User;
import com.ravsoft.spring.service.ICommonService;

@Controller
public class CommonController {
	
	private ICommonService commonService;

	@Autowired(required=true)
	@Qualifier(value="commonService")
	public void setUserService(ICommonService us){
		this.commonService = us;
	}
	
	// Default home page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String show(Model model) {
		//model.addAttribute("user", new User());
		//model.addAttribute("listUsers", this.commonService.listUsers());
		return "welcome";
	}
	
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String listUsers(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("listUsers", this.commonService.listUsers());
		return "user";
	}
	
	//For add and update user
	@RequestMapping(value= "/user/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User p){
		
		if(p.getUserId() == 0){
			//new user, add it
			this.commonService.addUser(p);
		}else{
			//existing user, call update
			this.commonService.updateUser(p);
		}
		
		return "redirect:/users";
		
	}
	
	@RequestMapping("/user/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
		
        this.commonService.removeUser(id);
        return "redirect:/users";
    }
 
    @RequestMapping("/user/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model){
        model.addAttribute("user", this.commonService.getUserById(id));
        model.addAttribute("listUsers", this.commonService.listUsers());
        return "userEdit";
    }
	
    @RequestMapping("/user/view/{id}")
    public String detailUser(@PathVariable("id") int id, Model model){
        model.addAttribute("user", this.commonService.getUserById(id));
        return "detail";
    }
    
    // Project controller
    @RequestMapping(value = "/projects", method = RequestMethod.GET)
	public String listProject(Model model) {
		model.addAttribute("project", new Project());
		model.addAttribute("listProject", this.commonService.listProject());
		return "project";
	}
	
	//For add and update project
	@RequestMapping(value= "/project/add", method = RequestMethod.POST)
	public String addProject(@ModelAttribute("person") Project p){
		
		if(p.getPid() == 0){
			//new project, add it
			this.commonService.addProject(p);
		}else{
			//existing project, call update
			this.commonService.updateProject(p);
		}
		
		return "redirect:/projects";
		
	}
	
	@RequestMapping("/project/remove/{id}")
    public String removeProject(@PathVariable("id") int id){
		
        this.commonService.removeProject(id);
        return "redirect:/projects";
    }
 
    @RequestMapping("/project/edit/{id}")
    public String editProject(@PathVariable("id") int id, Model model){
        model.addAttribute("project", this.commonService.getProjectById(id));
        model.addAttribute("listProject", this.commonService.listProject());
        return "projectEdit";
    }
	
    @RequestMapping("/project/view/{id}")
    public String detailProject(@PathVariable("id") int id, Model model){
        model.addAttribute("project", this.commonService.getProjectById(id));
        return "detail";
    }
    
    
    
    // Client controller
    @RequestMapping(value = "/clients", method = RequestMethod.GET)
	public String listClient(Model model) {
		model.addAttribute("client", new Client());
		model.addAttribute("listClient", this.commonService.listClient());
		return "client";
	}
      
    //For add and update client
  	@RequestMapping(value= "/client/add", method = RequestMethod.POST)
  	public String addClient(@ModelAttribute("client") Client p){
  		
  		if(p.getClientId() == 0){
  			//new project, add it
  			this.commonService.addClient(p);
  		}else{
  			//existing project, call update
  			this.commonService.updateClient(p);
  		}
  		
  		return "redirect:/clients";
  		
  	}
  	
  	@RequestMapping("/client/remove/{id}")
      public String removeClient(@PathVariable("id") int id){
  		
          this.commonService.removeClient(id);
          return "redirect:/clients";
      }
   
      @RequestMapping("/client/edit/{id}")
      public String editClient(@PathVariable("id") int id, Model model){
          model.addAttribute("client", this.commonService.getClientById(id));
          model.addAttribute("listClient", this.commonService.listClient());
          return "clientEdit";
      }
  	
      @RequestMapping("/client/view/{id}")
      public String detailClient(@PathVariable("id") int id, Model model){
          model.addAttribute("client", this.commonService.getClientById(id));
          return "detail";
      }
    
}
