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
    
 <div align="right"><a href="login.jsp"><h3>Back</h3></a></div>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%
  String id=request.getParameter("id");
 String pname=request.getParameter("name");
 String gender=request.getParameter("gender");
 String address=request.getParameter("addr");
 int age=Integer.parseInt(request.getParameter("age"));
 int phno=Integer.parseInt(request.getParameter("phno"));
 String email=request.getParameter("email");
 int bedno=Integer.parseInt(request.getParameter("bedno"));
 String ward=request.getParameter("ward");
 String doctor=request.getParameter("doc");
 String diagnosis=request.getParameter("diag");
 String treatment=request.getParameter("treatment");
 String hospitalenvrmt=request.getParameter("a");
  String wardfacility=request.getParameter("b");
 String toilets=request.getParameter("c");
 String food=request.getParameter("d");
 String attendingdoc=request.getParameter("e");
 String attendingnurse =request.getParameter("f");
 String hospitalbilling=request.getParameter("g");
 String receptionservice=request.getParameter("h");
 String admisionprocess=request.getParameter("i");
 String dischargeprocess=request.getParameter("j");
 String cameas=request.getParameter("x");
 String splcomment=request.getParameter("sc");

 %>
 <%
 PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,cameas);
ps.setString(2,id);
ps.setString(3,pname);
ps.setInt(4,age);
ps.setString(5,gender);
ps.setString(6,address);
ps.setInt(7,phno);
ps.setString(8,email);
ps.setInt(9,bedno);
ps.setString(10,ward);
ps.setString(11,doctor);
ps.setString(12,diagnosis);
ps.setString(13,treatment);
ps.setString(14,hospitalenvrmt);
ps.setString(15,wardfacility);
ps.setString(16,toilets);
ps.setString(17,food);
ps.setString(18,attendingdoc);
ps.setString(19,attendingnurse);
ps.setString(20,hospitalbilling);
ps.setString(21,receptionservice);
ps.setString(22,admisionprocess);
ps.setString(23,dischargeprocess);
ps.setString(24,splcomment);
ps.executeUpdate();
%>
<h1>Insert Successfully</h1>
<a href="feedbackform.jsp">Feedback Form</a>
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
