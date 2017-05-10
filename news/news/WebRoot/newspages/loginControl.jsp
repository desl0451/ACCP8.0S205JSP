<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	/*
	String login=(String)session.getAttribute("login");
	if(login==null){
	 response.sendRedirect("../index.jsp");
	 return;
	}
	*/
	Cookie[] cookies = request.getCookies();
	boolean bl = false;
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("username")) {
				if (cookies[i].getValue().equals("admin")) {
					out.print("读取cookie的值:" + cookies[i].getValue());
					bl=true;
				}
			}
		}
		if (bl == false) {
			response.sendRedirect("index.jsp");
			return;
		}
	}
%>