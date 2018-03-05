package Factory;

import Dao.UserDao;
import Service.UsersService;

public class DAOFactory {
	
	public static UserDao getUserDAOInstance() throws Exception{
		return new UsersService();
	}
//	public static CartDao getCartDAOInstance() throws Exception{
//		return  new CartService();
//	}
//	public static GoodsDao getGoodsDAOInstance() throws Exception{
//		return  new GoodsService();
//	}
//
//	public static OrderDao getOrderDAOInstance() throws Exception{
//		return new OrderService();
//	}

}
