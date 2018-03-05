package Dao;

import pojo.Users;
import pojo.userAddress;
import java.util.ArrayList;
public interface UserDao {
       public int addUser(Users user) throws Exception;
       public Users queryByEmail(String phone) throws Exception;
       public Users queryByUsername(String username) throws Exception;
       public int editPasswd(int Uid, String passWord) throws Exception;
       public int editInf(int uid, String uname, String phone) throws Exception;
       public void editAddress(userAddress useraddress) throws Exception;
       public ArrayList<userAddress> queryAddress(int Uid) throws Exception; 
       public void deleteAddress(int id) throws Exception;
       public void setDefaultAddress(int Uid, int id) throws Exception;
}
