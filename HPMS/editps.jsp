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
    
<br><h2 align="center">Edit Patient Status Details</h2>

<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<form name="myform" action="./editps1.jsp" >
<div align="right">
<a href ="viewpatientstatus.jsp">
<b>
Back
</b>
</a>
</div>
<%!
Statement st1;
String id,name,dt,rdoc,spl,cond,status,prescription,s;
int wardno;
%>
<center>
<%
id =request.getParameter("id");
%>
<%
st1=con.createStatement();
s="select * from status where pid='"+id+"'";
ResultSet rs1=st1.executeQuery(s);
if(rs1.next())
 {
id=rs1.getString(1);
	name=rs1.getString(2);
	wardno=rs1.getInt(5);
	rdoc=rs1.getString(3);
	spl=rs1.getString(4);
	cond=rs1.getString(6);
	status=rs1.getString(7);
	prescription=rs1.getString(8);
    dt=rs1.getString(9);
	}
 
%>
<table>
<tr>
<td>Id</td><td><input type="text" name="id" value="<%=id%>" disabled>
<input type="hidden" name="id" value="<%=id%>"></td>
 </tr>
  <tr>
<td>Date</td><td><input type="text" name="dt" value="<%=dt%>" ></td>
</tr>             

<tr align="left">
<td> Name</td><td><input type="text" name="name" value="<%=name%>" size="20" disabled></td>
</tr>

<tr>
<td>Ref.Doc</td><td><input type="text" name="rdoc" value="<%=rdoc%>"></td>
</tr>
<tr>
<td>Speciality</td><td><input type="text" name="spl" value="<%=spl%>" ></td>
</tr>
 <tr>
<td>Wardno</td><td><input type="text" name="wardno" value="<%=wardno%>" ></td>
</tr>             
 <tr>
<td>Condition Of Patient</td><td><input type="text" name="cond" value="<%=cond%>" ></td>
</tr>             
 <tr>
<td>Status Of Patient</td><td><input type="text" name="status" value="<%=status%>" ></td>
</tr>        
 <tr>
<td>Prescription Given</td><td><input type="text" name="prescription" value="<%=prescription%>" ></td>
</tr>             
 </table>
 <p align="center">
<br> <input type= "submit" value= "Update">
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
