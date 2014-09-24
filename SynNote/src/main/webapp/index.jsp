<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import='com.warmmer.SynNote' %>
<%@ page import='org.springframework.context.ApplicationContext' %>
<%@ page import='org.springframework.context.support.ClassPathXmlApplicationContext' %>

<%
	System.out.println(System.getProperty("user.dir"));
	ApplicationContext context =
    	new ClassPathXmlApplicationContext(new String[] {"Spring_config.xml"});
	SynNote sn = (SynNote)context.getBean("synNote");
	sn.p();
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    This is my JSP page. <br>
    <%=sn.p() %>
  </body>
</html>
