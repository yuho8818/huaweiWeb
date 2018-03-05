package Action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Factory.DAOFactory;
import pojo.Users;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email_address = request.getParameter("email_address");
		String password = request.getParameter("password");

		String path = "/home.jsp";
		try{
		 
			  Users user = DAOFactory.getUserDAOInstance().queryByEmail(email_address);
			  request.getSession().setAttribute("username", user.getUsername());
			  request.getSession().setAttribute("uid", user.getUser_id());
			  request.getSession().setAttribute("email_address", user.getEmail_address());
				if(user.getUsername()==null){
					request.getSession().setAttribute("status", "notExist");					
				}else if(user.getPassword().equals(password)){
					request.getSession().setAttribute("status", "success");
				}else{
					request.getSession().setAttribute("status", "failed");
				}
		  
			
			
		}catch(Exception e)
		{
			
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
