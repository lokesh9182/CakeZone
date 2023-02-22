package com.klr.sc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.CartDto;
import com.klr.sc.dto.OrderDto;
import com.klr.sc.service.ShoppingService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	ShoppingService service;
	
	public boolean userstatus(HttpSession httpSession) {
		return httpSession.getAttribute("loginMail")!=null;
	}
	
	//User access-------------------------------------------------------------------------------------
	@RequestMapping("/cart")
	public String cart(Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		List<CartDto> cart= service.getCartData( (int)session.getAttribute("userid"));
		List<CakeDto> cakesToBuy=service.getCakesByListOfId(cart);
		model.addAttribute("allCakes",cakesToBuy);
		model.addAttribute("cart",cart);
		model.addAttribute("total",service.amount(cart, cakesToBuy));
//		System.out.println(cakesToBuy.size());
		return "cart";
	}
	
	@RequestMapping("/placeorder")
	public String placeorder(Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		int userid=(int)session.getAttribute("userid");
		List<CartDto> cart= service.getCartData(userid);
		List<CakeDto> cakes=service.getCakesByListOfId(cart);
		service.placeOrder(cart,cakes,userid);
		service.emptycart(userid);
		return "redirect:/sc.com/userorders";
	}
	
	@RequestMapping("/remove")
	public String remove(@RequestParam("cakeid") int cakeid,HttpServletRequest req) {
		HttpSession session= req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		service.removefromcart(cakeid,(int)session.getAttribute("userid"));
		return "redirect:/sc.com/cart";
	}
	
	@RequestMapping("/increament")
	public String increament(Model model,@RequestParam("cakeid") int cakeid, HttpServletRequest req) {
		HttpSession session= req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		int userid=(int)req.getSession().getAttribute("userid");
		service.increament(cakeid,userid);
		return "redirect:/sc.com/cart";
	}
	@RequestMapping("/decreament")
	public String decreament(Model model,@RequestParam("cakeid") int cakeid, HttpServletRequest req) {
		HttpSession session= req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		int userid=(int)req.getSession().getAttribute("userid");
		service.decreament(cakeid,userid);
		return "redirect:/sc.com/cart";
	}
	
	@RequestMapping("/addTOCart")
	public String addToCart(@RequestParam("cakeid") int cakeid,HttpServletRequest req) {
		HttpSession session=req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		
		service.addToCart(cakeid,(int)session.getAttribute("userid"));
		return "redirect:/sc.com/cart";
	}
	
	@RequestMapping("/userorders")
	public String userorders(Model model,HttpServletRequest req) {
		HttpSession session= req.getSession();
		if(!userstatus(session)) return "redirect:/sc.com/login";
		int userid=(int)session.getAttribute("userid");
		List<OrderDto> orders=service.getallorders(userid);
		session.setAttribute("orders", orders);
//		System.out.println(orders);
		return "userorders";
	}
	
	@RequestMapping("/cancelorder")
	public String cancel_Order(HttpServletRequest req,@RequestParam("cakeid")int cakeid) {
		HttpSession session= req.getSession();
		int userid=(int)req.getSession().getAttribute("userid");
		if(!userstatus(session)) return "redirect:/sc.com/login";
		service.canceluUserOrder(userid,cakeid);
		return "redirect:/sc.com/userorders";
	}
	
	
	
	
	//Admin access---------------------------------------------------------------------------
	boolean CheckAdmin(HttpServletRequest req) {
		String ss=(String)req.getSession().getAttribute("loginMail");
		if(ss==null) return false;
		if(!ss.equals("admin")) return false;
		return true;
	}
	
	@RequestMapping("/admin_Interface")
	public String adminInterface(Model model,HttpServletRequest req) {
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";
	
		model.addAttribute("birthdaycakes",service.getAllCakes("Birthday"));
		model.addAttribute("weddingcakes",service.getAllCakes("Wedding"));
		model.addAttribute("customcakes",service.getAllCakes("Custom"));
		return "admin";
	}
	
	@RequestMapping("/addcake")
	public String addcake(Model model,HttpServletRequest req) {
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";
		model.addAttribute("cakedata",new CakeDto());
		return "addcake";
	}
	@RequestMapping("/insertcake")
	public String insertcake(CakeDto cake,HttpServletRequest req) {
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";		
		service.addCake(cake);
		return "redirect:/sc.com/admin_Interface";
	}
	
	@RequestMapping("/removeCake")
	public String RemoveCakeByAdmin(Model model,@RequestParam("cakeid") int cakeid,CakeDto cake,HttpServletRequest req) {
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";
		service.removeCakeByAdmin(cakeid);
		return "redirect:/sc.com/admin_Interface";
	}
	
	@RequestMapping("/adminorders")
	public String adminorders(Model model,HttpServletRequest req) {
		HttpSession session= req.getSession();
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";
		List<OrderDto> orders=service.getAdminOrders();
		session.setAttribute("orders", orders);
		return "adminOrders";
	}
	
	@RequestMapping("acceptOrRejectOrder")
	public String acceptOrReject(@RequestParam("status") int status,@RequestParam("cakeid") int cakeid,@RequestParam("userid") int userid, HttpServletRequest req) {
		if(!CheckAdmin(req)) return "redirect:/sc.com/logout";
		service.acceptRejectOrder(cakeid,userid,status);
		return "redirect: /ShoppingCart/sc.com/adminorders";
		        
	}

}
