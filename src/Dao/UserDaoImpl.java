package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import pojo.Product;
import pojo.Users;
import pojo.userAddress;

public class UserDaoImpl implements UserDao{
	
	private Connection conn = null;
	private PreparedStatement presta = null;
	ResultSet rs = null;
	
	public UserDaoImpl(Connection conn){
		this.conn = conn;
	}

	@Override
	public int addUser(Users user) throws Exception {
		String sql = "insert user set email_address=?,username=?,password=?";
		int result= 0 ; 
		presta = this.conn.prepareStatement(sql);
		presta.setString(1, user.getEmail_address());
		presta.setString(2, user.getUsername());
		presta.setString(3, user.getPassword());
		result = presta.executeUpdate();
		presta.close();
		return result;
	}
	
	public Users queryByEmail(String phone) throws SQLException  {
		Users user = new Users();
		String sql = "select * from user where email_address=?";
		presta = this.conn.prepareStatement(sql);
		presta.setString(1, phone);
		rs = presta.executeQuery();
		if(rs.next()){			
			user.setEmail_address(rs.getString("email_address"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setUser_id(rs.getInt("user_id"));
		}else{
			System.out.println("没找到相应用户！");
			user.setUser_id(0);
		}
		rs.close();
		presta.close();

		return user;
	}
	
	public Users queryByUsername(String username) throws SQLException{
		Users user = new Users();
		String sql = "select * from user where username=?";
		presta = this.conn.prepareStatement(sql);
		presta.setString(1, username);
		rs = presta.executeQuery();
		if(rs.next()){
			user.setEmail_address(rs.getString("email_address"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setUser_id(rs.getInt("user_id"));
		}else{
			System.out.println("没找到该用户！");
			user.setUser_id(0);
		}
		rs.close();
		presta.close();
		return user;
		
	}
	public int editPasswd(int user_id,String password){
		String sql="update user set password=? where user_id=?";
		int result=0;
		try {
			presta=this.conn.prepareStatement(sql);
			presta.setString(1,password);
			presta.setInt(2,user_id);
			result=presta.executeUpdate();
			presta.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}

	@Override
	public int editInf(int user_id, String username, String email_address) throws Exception {
			String sql="update user set username=?,email_address=? where user_id=?";
			int result=0;
			try {
				presta=this.conn.prepareStatement(sql);
				presta.setString(1, username);
				presta.setString(2, email_address);
				presta.setInt(3, user_id);
				result=presta.executeUpdate();
				presta.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return result;
	}
	@Override
	public void editAddress(userAddress useraddress) throws Exception {
		String sql = "insert address set user_id=?,name=?,phone=?,province=?,city=?,town=?,deaddress=?";
       try{
		int result= 0 ; 
		presta = this.conn.prepareStatement(sql);
		presta.setInt(1, useraddress.getUid());
		presta.setString(2, useraddress.getName());
		presta.setString(3, useraddress.getPhone());
		presta.setString(4, useraddress.getProvince());
		presta.setString(5, useraddress.getCity());
		presta.setString(6, useraddress.getTown());
		presta.setString(7, useraddress.getDeadress());
		result = presta.executeUpdate();
       } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		presta.close();
		
		
	}

	@Override
	public ArrayList<userAddress> queryAddress(int Uid) throws Exception {
		
		String sql = "select * from address where Uid = '"+Uid+"'";
		presta = this.conn.prepareStatement(sql);
		rs = presta.executeQuery();
		ArrayList<userAddress> list = new ArrayList<userAddress>(); 
		try{
		 while (rs.next()) {
			userAddress useraddress = new userAddress();
			useraddress.setUid(rs.getInt("Uid"));
			useraddress.setName(rs.getString("name"));
			useraddress.setPhone(rs.getString("phone"));
			useraddress.setProvince(rs.getString("province"));
			useraddress.setCity(rs.getString("city"));
			useraddress.setTown(rs.getString("town"));
			useraddress.setDeadress(rs.getString("deaddress"));
			useraddress.setIfdefault(rs.getBoolean("ifdefault"));
			useraddress.setId(rs.getInt("id"));
			list.add(useraddress);
		 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		presta.close();
		return list;
	}

	@Override
	public void deleteAddress(int id) throws Exception {
		String sql = "delete from address where id ='" + id + "';";
		try{
		presta = this.conn.prepareStatement(sql);
		presta.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		presta.close();
	}

	@Override
	public void setDefaultAddress(int Uid, int id) throws Exception {
		String sql = "update address set ifdefault=? where Uid='" + Uid + "'";
		try{
		presta = this.conn.prepareStatement(sql);
		presta.setInt(1, 0);
		presta.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql = "update address set ifdefault=? where id='" + id + "'";
		try{
			presta = this.conn.prepareStatement(sql);
			presta.setInt(1, 1);
			presta.executeUpdate();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		presta.close();
	}

}
