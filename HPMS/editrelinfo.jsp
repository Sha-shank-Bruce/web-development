<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hospital Patient Management System</title>
<meta name="keywords" content="#" />
<meta name="description" content="#" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">

    <div id="menu">
        <ul>
            <li><a href="login.jsp" class="current">Home</a></li>
            <li><a href="aboutus.jsp" target="_parent">About us</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
        </ul>    	
    </div> <!-- end of menu -->
    
    <div id="header">
    
        <div id="site_title">
        
            <h1>&nbsp;</h1>
            
      </div> <!-- end of site_title -->
        
    </div> <!-- end of header -->
    
    <div id="content_wrapper">
    
<br><h2 align="center">Edit InPatient Details</h2>

<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<form name="myform" action="./editrelinfo1.jsp" >
<div align="right">
<a href ="viewinpatient.jsp">
<b>
Back
</b>
</a>
</div>
<%!
Statement st3;
String id,name,gender,address,relation,s,r5,r6;
int age;
%>
<center>
<%
id =request.getParameter("id");
%>
<%
st3=con.createStatement();
s="select * from rel_info where id='"+id+"'";
ResultSet rs3=st3.executeQuery(s);


if(rs3.next())
{
name=rs3.getString(1);
gender=rs3.getString(2);
address=rs3.getString(3);
relation=rs3.getString(4);
age=rs3.getInt(5);
id=rs3.getString(6);
}

 if(gender.equals("male"))
 {
	 r5="checked";
	 r6="";
 }
 else
 {
	 r6="checked";
	 r5="";
 }
 %>

<table>
<tr align="left">
<td>Id</td><td><input type="text" name="id" value="<%=id%>" disabled>
<input type="hidden" name="id" value="<%=id%>"></td>
 </tr>
<tr>
<td> Name</td><td><input type="text" name="name" value="<%=name%>" size="20" disabled></td>
</tr>
<tr><td>Gender</td>
<td><input type="radio" name="gender" value="male" <%=r5%> disabled>Male</td>
<td><input type="radio" name="gender" value="female" <%=r6%> disabled>Female</td></tr>
<tr>
<tr>
<td>Age</td><td><input type="text" name="age" value="<%=age%>"></td>
</tr>
<tr>
<td>Address</td><td><input type="text" name="address" value="<%=address%>" ></td>
</tr>     
<tr>
<td>Relation</td><td><input type="text" name="relation" value="<%=relation%>" ></td>
</tr>     
</table>
 <p align="center">
 <br><input type= "submit" value= "Update">
 <input type= "reset" value= "Reset"></p>
</form>
<br>    	
                     <div class="more"></div>
                 </div>
                 
            </div>
            
            <div class="service_box float_r">
            
                 <div class="service_text">



                      

      </div>
                 </div>
            	
            </div>
        	
          



</body>
</html>
