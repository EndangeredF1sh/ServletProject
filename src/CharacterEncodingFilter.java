
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet Filter implementation class CharacterEncodingFilter
 */
//@WebFilter("/CharacterEncodingFilter")
public class CharacterEncodingFilter implements Filter {
	//定义编码
	private String encode = null;
	
	private FilterConfig config = null;
	
	
    /**
     * Default constructor. 
     */
    public CharacterEncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse reps = (HttpServletResponse) response;
		if(this.encode != null && this.encode.equals("")){
			req.setCharacterEncoding(this.encode);
			reps.setContentType("text/html; charset=UTF-8");
		}else{
			req.setCharacterEncoding(this.encode);
			reps.setContentType("text/html; charset=UTF-8");
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		
		this.config = fConfig;
		this.encode = config.getInitParameter("encoding") == null?"utf-8":config.getInitParameter("encoding");
		
	}

}
