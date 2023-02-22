package com.klr.sc.Dao;

import java.util.List;

import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.CartDto;
import com.klr.sc.dto.Customer;
import com.klr.sc.dto.OrderDto;
import com.klr.sc.dto.logindto;

public interface ShoppingDao {
	
	void addUser(Customer customer);
	
	List<CakeDto> getAllCakes(String category);
	
	CakeDto getcake(int cakeid);

	List<CartDto> getcart(int userid);

	List<CakeDto> getCakesforCart(List<CartDto> arr);

	void removefromCart(int cakeid,int userid);

	void addItemToCart(int cakeid,int userid);

	int userstatus(logindto user);

	void insertCake(CakeDto cake);

	void removeCakeByAdmin(int cakeid);
	
	void increament(int cakeid, int userid);

	void decreament(int cakeid, int userid);

	List<OrderDto> getalluserorders(int userid);

	void placeorder(List<CartDto> cart, List<CakeDto> cakes, int userid);

	void emptycart(int userid);

	List<OrderDto> getallAdminOrders();

	void acceptRejectOrder(int cakeid,int userid, int status);
	

}
