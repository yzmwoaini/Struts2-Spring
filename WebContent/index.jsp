<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.yccz.dao.*, com.yccz.bean.User"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>显示用户信息</title>
	<style type="text/css">
		a:link, a:visited { color:#000; text-decoration:none; }
		a:hover, a:active { color:#000; text-decoration:underline; }
		a:HOVER{color:red;}		
		.br_TR{
 			background-color:expression(this.rowIndex%2==0?"#CCFFFF":"#FFFFCC");
 			cursor:hand;
		}
		.br_head{
			background-color:#DDFFCC;
		}			
	</style>
  </head>  
  <body>
  <div align="center">
  <font color="red">${requestScope.tip}</font>
   	 <h3><font color="blue">用户信息列表</font></h3>
     <table width="620"> 
     	<tr>
     		<td align="right"><a href="userToAdd">增加用户</a></td>
 		</tr>     	
     </table>
     <table width="640" border="1" align="center" bordercolor="#99CCFF">
     <tr class="br_head">
     	<td>ID号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>电话</td>       
        <td>学校</td>        
        <td>删除</td>
        <td>修改</td>
     </tr>
   <s:iterator value="list" >
      <tr class="br_TR">    
      	<td><s:property value="id"/></td>
        <td><a href="userToDetail?user.id=<s:property value='id'/>"><s:property value="name"/></a></td>
        <td><s:property value="sex"/></td>
        <td><s:property value="age"/></td>
        <td><s:property value="telephone"/></td>
        <td><s:property value="school"/></td>
    <%--  <td><a href="javascript:if(confirm('确定要删除吗？'))
        window.location.reload('userDelete?user.id=<s:property value='id'/>')">删除</a></td>
         --%>
            <td><input type="button" value="删除"
        onclick="javascript:location.replace('userDelete?user.id=<s:property value='id'/>')"></td> 
        <td><input type="button" value="修改"
        onclick="javascript:location.replace('userToUpdate?user.id=<s:property value='id'/>')"></td> 
      </tr>
    </s:iterator> 
    </table>
   </div>
  </body>	
</html>
