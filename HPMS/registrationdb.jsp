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
    
 <div align="right"><a href="viewregistration.jsp"><h3>Back</a></div><HTML>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%
 int formno=Integer.parseInt(request.getParameter("form"));
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String dob=request.getParameter("dob");
 int age=Integer.parseInt(request.getParameter("age"));
 String gender=request.getParameter("gender");
 String occupation=request.getParameter("occupation");
 String address=request.getParameter("addr");
 String email=request.getParameter("email");
 int ifinpatbedno=Integer.parseInt(request.getParameter("bedno"));
 String refdoc=request.getParameter("rdoc"); 
 String patienttype=request.getParameter("ptype");
String mobileno=request.getParameter("mno");
%>
<%
try
{
PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setInt(3,age);
ps.setString(4,gender);
ps.setString(5,occupation);
ps.setString(6,address);
ps.setString(7,email);
ps.setString(8,mobileno);
ps.setString(9,refdoc);
ps.setString(10,patienttype);
ps.setInt(11,ifinpatbedno);
ps.setString(12,dob);
ps.setInt(13,formno);
ps.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<center><h1>Insert Succesfully</h1>
<a href="registration.jsp">Register</a></center>
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
