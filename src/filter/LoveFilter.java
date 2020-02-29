package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class eLoveFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;

        HttpSession session = httpServletRequest.getSession();

        String isLogin = "";

        isLogin = String.valueOf(session.getAttribute("isLogin"));
        System.out.println(isLogin);

        if (isLogin.equals("true")){
            filterChain.doFilter(httpServletRequest,httpServletResponse);
        }else {
            System.out.println("触发过滤器");
            httpServletResponse.sendRedirect("not_logged.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}
