package Service;

import java.util.ArrayList;

import DB.DBConnection;
import Dao.UserDao;
import Dao.UserDaoImpl;
import pojo.Users;
import pojo.userAddress;

public class UsersService implements UserDao{
	private DBConnection dbconn = null;
	private UserDao dao = null;
	
	public UsersService() throws Exception{
		this.dbconn = new DBConnection();
		this.dao = new UserDaoImpl(this.dbconn.getConnection());
		
	}

	@Override
	public int addUser(Users user) throws Exception {
		// TODO Auto-generated method stub
		int result = 0;
		try{
			result = this.dao.addUser(user);
		}catch(Exception e){
			throw e;
		}finally{
			dbconn.close();
		}
		return result;
	}
	
	public Users queryByEmail(String email_address) throws Exception{
		Users user = new Users();
		try {
			user = this.dao.queryByEmail(email_address);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return user;
	}
	public Users queryByUsername(String username) throws Exception{
		Users user = new Users();
		try {
			user = this.dao.queryByUsername(username);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return user;
	}

	@Override
	public int editInf(int Uid, String uname, String phone) throws Exception {
		int result = 0;
		try {
			result = this.dao.editInf(Uid, uname, phone);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return result;
	}
	@Override
	public int editPasswd(int Uid, String passWord) throws Exception {
		int result = 0;
		try {
			result = this.dao.editPasswd(Uid, passWord);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return result;
	}
	@Override
	public void editAddress(userAddress useraddress) throws Exception {
		try {
			 this.dao.editAddress(useraddress);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		
	}

	@Override
	public ArrayList<userAddress> queryAddress(int Uid) throws Exception {
		ArrayList<userAddress> list = null;
		try {
		list = this.dao.queryAddress(Uid);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return list;
	}

	@Override
	public void deleteAddress(int id) throws Exception {
		try {
			 this.dao.deleteAddress(id);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
	}

	@Override
	public void setDefaultAddress(int Uid, int id) throws Exception {
		try {
			 this.dao.setDefaultAddress(Uid, id);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		
	}

	

}
