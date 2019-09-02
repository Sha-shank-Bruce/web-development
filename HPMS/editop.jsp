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
<h2 align="center">Edit OutPatient Details</h2>

<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<form name="myform" action="./editop1.jsp" >
<div align="right">
<a href ="viewoutpatient.jsp">
<b>
Back
</b>
</a>
</div>
<%!
Statement st1;
String id,name,gender,address,docname,spl,complaint,illnesshistory,dt,tim,doa,s,r1,r2;
int age;
%>
<center>
<%
id =request.getParameter("id");
%>
<%
st1=con.createStatement();
s="select * from out_patient where pid='"+id+"'";
ResultSet rs1=st1.executeQuery(s);
if(rs1.next())
 {
    id=rs1.getString(1);
	name=rs1.getString(2);
	age=rs1.getInt(3);
	address=rs1.getString(4);
    gender=rs1.getString(5);
	docname=rs1.getString(6);
	spl=rs1.getString(7);
    dt=rs1.getString(11);
    tim=rs1.getString(10);
	complaint=rs1.getString(8);
	doa=rs1.getString(12);
	illnesshistory=rs1.getString(9);
 }
 if(gender.equals("male"))
 {
	 r1="checked";
	 r2="";
 }
 else
 {
	 r2="checked";
	 r1="";
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
<td>Age</td><td><input type="text" name="age" value="<%=age%>"></td>
</tr>
<tr><td>Gender</td>
<td><input type="radio" name="gender" value="male" <%=r1%> disabled>Male</td>
<td><input type="radio" name="gender" value="female" <%=r2%> disabled>Female</td></tr>
<tr>
<td>Address</td><td><input type="text" name="address" value="<%=address%>" ></td>
</tr>             
<tr>
<td>Doctor Name</td><td><input type="text" name="dname" value="<%=docname%>" ></td>
</tr>     
<tr>
<td>Speciality</td><td><input type="text" name="spl" value="<%=spl%>" ></td>
</tr>
<tr>
<td>Date Of Appointment</td><td><input type="text" name="doa" value="<%=doa%>" ></td>
</tr>             
<tr>
<td>Time</td><td><input type="text" name="time" value="<%=tim%>" ></td>
</tr> 
<tr>
<td>Complaint</td><td><input type="text" name="comp" value="<%=complaint%>" ></td>
</tr> 
<tr>
<td>Illness History</td><td><input type="text" name="illnesshistory" value="<%=illnesshistory%>" ></td>
</tr>             

 </table>
 <br><br><p align="center">
 <input type= "submit" value= "Update">
 <input type= "reset" value= "Reset"></p>
</form>
<br><br>    	
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
