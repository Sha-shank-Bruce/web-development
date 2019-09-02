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
 <div align="right"><a href="viewoutpat2.jsp"><h3>Back</h3></a></div>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%
  int id=Integer.parseInt(request.getParameter("id"));
 String pname=request.getParameter("pname");
 String date=request.getParameter("date");
 String gender=request.getParameter("gender");
 String address=request.getParameter("addr");
 int age=Integer.parseInt(request.getParameter("age"));
 String dname=request.getParameter("dname");
 String speciality=request.getParameter("spl");
 String doa=request.getParameter("doa");
 String time=request.getParameter("time");
 String complaint=request.getParameter("comp");
 String illnesshistory=request.getParameter("illnesshistory");
 %>
 <%
 PreparedStatement ps=con.prepareStatement("insert into out_patient values(?,?,?,?,?,?,?,?,?,?,?,?)");
 ps.setInt(1,id);
 ps.setString(2,pname);
 ps.setInt(3,age);
 ps.setString(4,address);
 ps.setString(5,gender); 
 ps.setString(6,dname);
 ps.setString(7,speciality);
 ps.setString(12,doa);
 ps.setString(10,time);
 ps.setString(8,complaint);
 ps.setString(9,illnesshistory);
 ps.setString(11,date);
 ps.executeUpdate();
 %>
<CENTER> <h1>Insert Succesfully</h1>
 <a href="outpatient.jsp">Outpatient</a></CENTER>
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
