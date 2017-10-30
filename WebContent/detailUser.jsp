<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.yccz.dao.*, com.yccz.bean.User"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示用户信息</title>
    
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
	<div align="center">
		<h3><font color="green">显示用户详细信息</font></h3> 
		<table align="center" border=1 bordercolor="#99CCFF">
			<tr>
				<td>ID号：</td>
				<td><s:property value="user.id"/></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><s:property value="user.name"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><s:property value="user.sex" /></td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td><s:property value="user.age" /></td>
			</tr>
			<tr>
				<td>电话：</td>
				<td><s:property value="user.telephone" /></td>
			</tr>
			<tr>
				<td>邮件：</td>
				<td><s:property value="user.email" /></td>
			</tr>
			<tr>
				<td>专业：</td>
				<td><s:property value="user.specialty" /></td>
			</tr>
			<tr>
				<td>学校：</td>
				<td><s:property value="user.school"  /></td>
			</tr>
			<tr>
				<td>地址：</td>
				<td><s:property value="user.address" /></td>
			</tr>
		</table>
    </div>
  </body>
</html>
