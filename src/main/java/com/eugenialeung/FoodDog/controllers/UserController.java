package com.eugenialeung.FoodDog.controllers;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eugenialeung.FoodDog.models.User;
import com.eugenialeung.FoodDog.services.UserService;
import com.eugenialeung.FoodDog.validator.UserValidator;

@Controller
public class UserController {
	private UserService userService;
	private UserValidator userValidator;
	
	public UserController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
	
	@RequestMapping(value = {"/", "/home", "/{action}"})
	public String homepage(@PathVariable(value="action", required=false) String action, Model model) {
		if(action != null) {
			if(action.equals("logout")) {
				model.addAttribute("logoutMessage", "You have successfully logged out!");
			}
		}
		return "homepage.jsp";
	}
	@RequestMapping("/create")
	public String create() {
		return "create.jsp";
	}
	
    @RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
    
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
    	userValidator.validate(user,  result);
        if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        if (userService.checkDatabaseEmpty().isEmpty() == true){
        	userService.saveUserWithAdminRole(user);
        	return "adminPage.jsp";
        }
        else {
        	userService.saveWithUserRole(user);    
            return "redirect:/userDashboard";
        }
    }
    
	@RequestMapping("/admin")
    public String adminPage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        
        List<Object[]> allAccounts = userService.showAllUsers();
        model.addAttribute("allUsers", allAccounts);
        return "adminPage.jsp";
    }
    
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model, Principal principal) {
    	if(principal != null) {
    		return "redirect:/userDashboard";
    	}
    	if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "loginPage.jsp";
    }
    
    @RequestMapping("/userDashboard")
    public String home(Principal principal, Model model) {
        // 1
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "dashboard.jsp";
    }

}



