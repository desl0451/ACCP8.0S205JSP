<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String login=(String)session.getAttribute("login");
  if(login==null){
	 response.sendRedirect("../index.jsp");
	 return;
  }
%>