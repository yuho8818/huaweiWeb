package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter(
		description = "登陆过滤",
		filterName = "LoginFilter", 
		urlPatterns = {"/CartServlet/*","/pageServlet/*"}
	)

// "/CartServlet/*","/pageServlet/*"
public class LoginFilter implements Filter{
	
	

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		String status = (String) request.getSession().getAttribute("status");
		if(status == "success"){
			chain.doFilter(req, res);
		}else{
			request.setAttribute("check", "请先登录");
			request.getRequestDispatcher("/home.jsp").forward(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
