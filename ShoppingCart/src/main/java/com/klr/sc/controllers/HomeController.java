package com.klr.sc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.Customer;
import com.klr.sc.dto.logindto;
import com.klr.sc.service.ShoppingService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	ShoppingService service;

	@RequestMapping("/welcome")
	public String homePage() {
		return "HomePage";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/menu")
	public String menu(Model model) {
		model.addAttribute("birthdaycakes",service.getAllCakes("Birthday"));
		model.addAttribute("weddingcakes",service.getAllCakes("Wedding"));
		model.addAttribute("customcakes",service.getAllCakes("Custom"));
//		System.out.println(service.getAllCakes());
		return "menu";
	}
	
	@RequestMapping("/order")
	public String order(@RequestParam("cakeid")int cakeid, Model model) {
		CakeDto cake=service.getCake(cakeid);
		model.addAttribute("cake",cake);
//		System.out.println(cake);
		return "order";
	}
	//-----------------------------------------------------------------------------------------------------------------------
	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("userdata",new Customer());
		return "registration";
	}
	
	@RequestMapping("/registration_success")
	public String reg_success(@ModelAttribute("userdata") Customer user,HttpServletRequest request) {
//		System.out.println(user);
		HttpSession session = request.getSession();
		service.addCustomer(user);
		logindto usertologin= new logindto();
		usertologin.setEmail(user.getEmail());
		usertologin.setPassword(user.getPassword());
		int userid=service.status(usertologin);
		session.setAttribute("loginMail", user.getEmail());
		session.setAttribute("loginStatus",428);
		session.setAttribute("userid",userid);
		return "redirect:/sc.com/welcome";
	}
	//-------------------------------------------------------------------------------------------------------------------
	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMail")!=null) return "menu";
		model.addAttribute("logindata",new logindto());
		return "login";
	}
	
	@RequestMapping("/loginsuccess")
	public String loginsuccess(logindto user,HttpServletRequest request) {
		System.out.println(user);
		if(user.getEmail().equals("admin") && user.getPassword().equals("0000")) {
			request.getSession().setAttribute("loginMail", user.getEmail());
			return "redirect:/sc.com/admin_Interface";
		}
		
		int userid=service.status(user);
		if(userid>0) {
			HttpSession session=request.getSession();
			session.setAttribute("loginMail", user.getEmail());
			session.setAttribute("loginStatus",428);
			session.setAttribute("userid",userid);
			System.out.println(userid);
			return "redirect:/sc.com/menu";
		}
//		System.out.println(user.getEmail()+"----"+status);
		System.out.println(userid);
		return "redirect:/sc.com/login";
	}
	//------------------------------------------------------------------------------------------------------------------------------


	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		
		HttpSession session=req.getSession();
		session.removeAttribute("loginMail");
		session.removeAttribute("loginStatus");
		session.removeAttribute("userid");
		
		return "HomePage";
		
	}

	


}
