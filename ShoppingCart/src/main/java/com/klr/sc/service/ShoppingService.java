package com.klr.sc.service;

import java.util.List;

import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.CartDto;
import com.klr.sc.dto.Customer;
import com.klr.sc.dto.OrderDto;
import com.klr.sc.dto.logindto;

public interface ShoppingService {
	void addCustomer( Customer customer);
	
	List<CakeDto> getAllCakes(String category);
	
	CakeDto getCake(int cakeid);

	List<CartDto> getCartData(int userid);

	List<CakeDto> getCakesByListOfId(List<CartDto> arr);
	
	int amount(List<CartDto> cart,List<CakeDto> cake);

	void removefromcart(int cakeid,int userid);

	void addToCart(int cakeid,int userid);

	int status(logindto user);

	void addCake(CakeDto cake);

	void removeCakeByAdmin(int cakeid);

	void increament(int cakeid, int userid);

	void decreament(int cakeid, int userid);

	List<OrderDto> getallorders(int userid);

	void placeOrder(List<CartDto> cart, List<CakeDto> cakes, int userid);

	void emptycart(int userid);

	List<OrderDto> getAdminOrders();

	void acceptRejectOrder(int cakeid,int userid, int status);

	void canceluUserOrder(int userid, int cakeid);
	

}
