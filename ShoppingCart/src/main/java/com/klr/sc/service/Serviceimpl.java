package com.klr.sc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klr.sc.Dao.ShoppingDao;
import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.CartDto;
import com.klr.sc.dto.Customer;
import com.klr.sc.dto.OrderDto;
import com.klr.sc.dto.logindto;

@Service
public class Serviceimpl implements ShoppingService {
	
	@Autowired
	ShoppingDao dao;
	
	@Override
	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		dao.addUser(customer);
		
	}

	@Override
	public List<CakeDto> getAllCakes(String category) {
		// TODO Auto-generated method stu
		return dao.getAllCakes(category);
	}

	@Override
	public CakeDto getCake(int cakeid) {
		// TODO Auto-generated method stub
		
		return dao.getcake(cakeid);
	}

	@Override
	public List<CartDto> getCartData(int userid) {
		// TODO Auto-generated method stub
		return dao.getcart(userid);
	}

	@Override
	public List<CakeDto> getCakesByListOfId(List<CartDto> arr) {
		// TODO Auto-generated method stub
		return dao.getCakesforCart(arr);
	}

	@Override
	public int amount(List<CartDto> cart, List<CakeDto> cake) {
		// TODO Auto-generated method stub
		int amount=0;
		for(int i=0; i<cart.size();i++) {
			amount+=cake.get(i).getPrice()*cart.get(i).getCount();
		}
		return amount;
	}

	@Override
	public void removefromcart(int cakeid,int userid) {
		// TODO Auto-generated method stub
		dao.removefromCart(cakeid,userid);
		
	}

	@Override
	public void addToCart(int cakeid,int userid) {
		// TODO Auto-generated method stub
		dao.addItemToCart(cakeid,userid);
		
	}

	@Override
	public int status(logindto user) {
		// TODO Auto-generated method stub
		
		return dao.userstatus(user);
	}

	@Override
	public void addCake(CakeDto cake) {
		// TODO Auto-generated method stub
		dao.insertCake(cake);
		
	}

	@Override
	public void removeCakeByAdmin(int cakeid) {
		// TODO Auto-generated method stub
		dao.removeCakeByAdmin(cakeid);
		
	}

	@Override
	public void increament(int cakeid, int userid) {
		// TODO Auto-generated method stub
		dao.increament(cakeid, userid);
		
	}

	@Override
	public void decreament(int cakeid, int userid) {
		// TODO Auto-generated method stub
		dao.decreament(cakeid, userid);
	}

	@Override
	public List<OrderDto> getallorders(int userid) {
		// TODO Auto-generated method stub
		return dao.getalluserorders(userid);
	}

	@Override
	public void placeOrder(List<CartDto> cart, List<CakeDto> cakes, int userid) {
		// TODO Auto-generated method stub
		dao.placeorder(cart,cakes,userid);
	}

	@Override
	public void emptycart(int userid) {
		// TODO Auto-generated method stub
		dao.emptycart(userid);
		
	}

	@Override
	public List<OrderDto> getAdminOrders() {
		// TODO Auto-generated method stub
		
		return dao.getallAdminOrders();
	}

	@Override
	public void acceptRejectOrder(int cakeid,int userid, int status) {
		// TODO Auto-generated method stub
		dao.acceptRejectOrder(cakeid,userid,status);
		
	}

	@Override
	public void canceluUserOrder(int userid, int cakeid) {
		// TODO Auto-generated method stub
		dao.acceptRejectOrder(cakeid, userid,824);
		
	}

	
}
