package com.kukoo.base.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;

import redis.clients.jedis.Jedis;

/**
 * 登录拦截filter
 * @author chenjianghe
 *
 */
public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		//获取根目录所对应的绝对路径
//        String currentURL = request.getRequestURI();
//        //截取到当前文件名用于比较
//        String targetURL = currentURL.substring(currentURL.indexOf("/",1),currentURL.length());
//        //System.out.println(targetURL);
//        //如果session不为空就返回该session，如果为空就返回null
//        String sessionId = request.getSession().getId();
//        Jedis jedis = RedisUtil.getJedis();
//        String userId = StaticMethod.nullObject2String(jedis.get(sessionId));
//        if("".equals(userId)) {
//        	
//        }
//        if(!"/index.jsp".equals(targetURL)){
//            //判断当前页面是否是重顶次昂后的登陆页面页面，如果是就不做session的判断，防止死循环
//            if("".equals(userId)){
//                //如果session为空表示用户没有登陆就重定向到login.jsp页面
//                //System.out.println("request.getContextPath()=" + request.getContextPath());  
//                response.sendRedirect(request.getContextPath()+"/menu/showSignIn");
//            }
//        }

        //继续向下执行
        chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
}
