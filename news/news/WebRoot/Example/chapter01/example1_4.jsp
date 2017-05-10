<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>JSP页面组成</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body>
			<!-- 这是HTML注释(客户端可以看到源代码) -->
			<%--这是JSP注释(客户端无法看到源代码) --%>
			你好,今天是
			<%
				//使用预定格式将日期转换为字符串
				SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日");
				String strCurrentTime = format.format(new Date());
			%>
			<%=strCurrentTime %>
			<%! String declare="this is declaration"; %>
			<%=declare %>
</body>
</html>
