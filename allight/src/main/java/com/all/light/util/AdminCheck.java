package com.all.light.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminCheck extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		String id=(String)session.getAttribute("MID");
		String uri = request.getServletPath();
		System.out.println("관리자 권한 체크 \nsession.(id)= "+session.getAttribute("MID")+
				"\nuri = " + uri);
		
		/*
		// 사용자가 요청한 uri알아내기
		String module = uri.substring(1, uri.indexOf("/", 1));
		System.out.println("module = " + module);
		*/

		// 인터셉트 불통 / 통과
				if (id==null || id.length()==0) {
					String CP = request.getContextPath();
					response.sendRedirect(CP+"/fail.com");
					return false;
				} else {
					return super.preHandle(request, response, handler);
				}
	}
}
