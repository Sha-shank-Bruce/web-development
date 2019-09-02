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
 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%!
 PreparedStatement pst;
 Statement stmt;
 String userid;
 String password;
 String roles;
 %>
 <%
 userid=request.getParameter("userid");
 password=request.getParameter("pass");
 %>
 <%
 stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select * from login where userid='"+userid+"' and password='"+password+"'");
if(rs.next())
 {
 roles=rs.getString(3);
 session.setAttribute("userid",userid);
 session.setAttribute("roles",roles);
if(roles.equals("admin"))
 {
 %>
 <jsp:forward page="adminpage.jsp"/>
 <%
 }
 else if(roles.equals("receptionist"))
 {
 %>
 <jsp:forward page="receptionist.jsp"/>
 <%
 }
 else
 {
 %>
 <jsp:forward page="doctor.jsp"/>
 <%
 }
 }
 %>
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
