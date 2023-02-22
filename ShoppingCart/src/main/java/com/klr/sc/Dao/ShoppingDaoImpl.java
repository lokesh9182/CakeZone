package com.klr.sc.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.klr.sc.dto.CakeDto;
import com.klr.sc.dto.CartDto;
import com.klr.sc.dto.Customer;
import com.klr.sc.dto.OrderDto;
import com.klr.sc.dto.logindto;

@Repository
public class ShoppingDaoImpl implements ShoppingDao {
	
	@Autowired
	JdbcTemplate jdbc;
	
	@Override
	public void addUser(Customer customer) {
		String sql="insert into users(name,email,mobile,password) values(?,?,?,?);";
		Object[] data= {customer.getName(),customer.getEmail(),customer.getMobile(),customer.getPassword()};
		jdbc.update(sql,data);
		
	}

	@Override
	public List<CakeDto> getAllCakes(String category) {
		// TODO Auto-generated method stub
		String sql="select * from cakes where category='"+category+"'";
		List<CakeDto> cakes = jdbc.query(sql, new BeanPropertyRowMapper<CakeDto>(CakeDto.class));
		return cakes;
	}

	@Override
	public CakeDto getcake(int cakeid) {
		// TODO Auto-generated method stub
		String sql="select * from cakes where cakeid=?";
		CakeDto data= jdbc.queryForObject(sql,new BeanPropertyRowMapper<CakeDto>(CakeDto.class) ,cakeid);
		return data;
	}

	@Override
	public List<CartDto> getcart(int userid) {
//		System.out.println(userid+"user id in dao layer");
		String sql="select * from cart where user_id="+userid;
		List<CartDto> cart = jdbc.query(sql, new BeanPropertyRowMapper<CartDto>(CartDto.class));
		return cart;
	}

	@Override
	public List<CakeDto> getCakesforCart(List<CartDto> arr) {
		
		String sql="select * from cakes where cakeid=?";
		List<CakeDto> cakes=new ArrayList<>();
		for(CartDto cake:arr) {
	
			cakes.add(jdbc.queryForObject(sql,new BeanPropertyRowMapper<CakeDto>(CakeDto.class) ,cake.getCakeid()));
		}
//		System.out.println(cakes.size()+""+cakes);
		return cakes;
	}

	@Override
	public void removefromCart(int cakeid,int userid) {
		// TODO Auto-generated method stub
		String sql="delete from cart where cakeid=? and user_id=?";
		jdbc.update(sql,cakeid,userid);
		
	}
	@Override
	public void emptycart(int userid) {
		// TODO Auto-generated method stub
		String sql="delete from cart where user_id=?";
		jdbc.update(sql,userid);
		
	}

	@Override
	public void addItemToCart(int cakeid,int userid) {
		// TODO Auto-generated method stub
		String sql="select count(*) from cart where cakeid=? and user_id=?";
		
		if(jdbc.queryForObject(sql,Long.class ,cakeid,userid) == 0){
			String query="insert into shoppingcart.cart(cakeid,user_id) values(?,?)";
			jdbc.update(query,cakeid,userid);
		}
		
	}

	@Override
	public int userstatus(logindto user) {
		// TODO Auto-generated method stub
		
		String sql="select count(*) from users where email=? and password=?";
		String query="select id from users where email=? and password=?";
		Long count=jdbc.queryForObject(sql,Long.class ,user.getEmail(),user.getPassword());
		if (count > 0) return jdbc.queryForObject(query,Integer.class ,user.getEmail(),user.getPassword());
		return 0;
	}

	@Override
	public void insertCake(CakeDto cake) {
		// TODO Auto-generated method stub
		String sql="insert into cakes(name,caption,details,price,category) values(?,?,?,?,?)";
		Object[] data= {cake.getName(),cake.getCaption(),cake.getDetails(),cake.getPrice(),cake.getCategory()};
		jdbc.update(sql, data);
		
	}

	@Override
	public void removeCakeByAdmin(int cakeid) {
		// TODO Auto-generated method stub
		String sql="delete from cakes where cakeid=?";
		jdbc.update(sql,cakeid);
		
	}
	
	@Override
	public void increament(int cakeid, int userid) {
		// TODO Auto-generated method stub
		String query="select count from cart where  user_id=? and cakeid=?";
		Long count=jdbc.queryForObject(query,Long.class,userid,cakeid);
		count++;
		String sql = "update cart set count="+count+" where user_id=? and cakeid=?";
		jdbc.update(sql,userid,cakeid);
		
	}

	@Override
	public void decreament(int cakeid, int userid) {
		// TODO Auto-generated method stub
		String query="select count from cart where  user_id=? and cakeid=?";
		Long count=jdbc.queryForObject(query,Long.class,userid,cakeid);
		if(count==1)removefromCart(cakeid,userid);
		else {
			count--;
			String sql = "update cart set count="+count+" where user_id=? and cakeid=?";
			jdbc.update(sql,userid,cakeid);
		}
	}

	@Override
	public List<OrderDto> getalluserorders(int userid) {
		// TODO Auto-generated method stub
		String sql="select userid,cakeid,cakename,count,status,cost from orders where userid=? ";
		List<OrderDto> orders = jdbc.query(sql,new BeanPropertyRowMapper<OrderDto>(OrderDto.class),userid);
		
		return orders;
	}

	@Override
	public void placeorder(List<CartDto> cart, List<CakeDto> cakes, int userid) {
		// TODO Auto-generated method stub
		String sql="insert into orders(userid,cakeid,cakename,count,cost) values(?,?,?,?,?)";
		for(int i=0; i<cakes.size(); i++) {
			Object[] data= {userid,cakes.get(i).getCakeid(),cakes.get(i).getName(),cart.get(i).getCount(),cakes.get(i).getPrice()};
			jdbc.update(sql,data);
		}
		
	}

	@Override
	public List<OrderDto> getallAdminOrders() {
		String sql="select userid,cakeid,cakename,count,status,cost from orders ";
		List<OrderDto> orders = jdbc.query(sql,new BeanPropertyRowMapper<OrderDto>(OrderDto.class));
		
		return orders;
	}

	@Override
	public void acceptRejectOrder(int cakeid,int userid, int status) {
		// TODO Auto-generated method stub
		String sql="delete from orders where userid=? and cakeid=?";
		if(status==428)sql="update orders set status=\"Order accepted\" where userid=? and cakeid=?";
		jdbc.update(sql,userid,cakeid);
		
		
	}

}
