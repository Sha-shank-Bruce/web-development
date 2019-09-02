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
    
 <div align="right"><a href="viewps2.jsp"><h3>Back</h3></a></div>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%
  int id=Integer.parseInt(request.getParameter("id"));
 String pname=request.getParameter("pname");
 String date=request.getParameter("date");
String rdoc=request.getParameter("rdoc");
String speciality=request.getParameter("spl");
String condofpat=request.getParameter("cond");
String status=request.getParameter("status");
String prescription=request.getParameter("prescription");
int wardno=Integer.parseInt(request.getParameter("wardno"));

 %>
 <%
 PreparedStatement ps=con.prepareStatement("insert into status values(?,?,?,?,?,?,?,?,?)");
 ps.setInt(1,id);
 ps.setString(2,pname); 
 ps.setString(3,rdoc);
 ps.setString(4,speciality);
 ps.setInt(5,wardno);
 ps.setString(6,condofpat);
 ps.setString(7,status);
 ps.setString(8,prescription);
 ps.setString(9,date);
 ps.executeUpdate();
 %>
<CENTER><h1>Insert Succesfully</h1>
 <a href="patienthealthstatus.jsp">Patient Health Status</a></CENTER>
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
