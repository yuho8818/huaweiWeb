package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static final String Driver = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://112.74.93.172:3306/new_shop?characterEncoding=UTF-8";
	private static final String USER = "root";
	private static final String PASSWORD ="uAiqwVwjJ8-i";
	private Connection theConnection = null;
	
	public DBConnection() throws Exception {
		try{
			Class.forName(Driver);
			this.theConnection = DriverManager.getConnection(URL, USER, PASSWORD);
		}catch(Exception e){
			throw e;			
		}
	}
	
	public void close() throws Exception {
		if(this.theConnection != null){
			try{
				this.theConnection.close();
			}catch(Exception e){
				throw e;
			}
		}
	}
	public Connection getConnection(){
		return this.theConnection;
	}

}
