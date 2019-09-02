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
    
 <div align="right"><a href="viewstaff.jsp"><h3>Back</h3></a></div>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%@ include file="previlage.jsp"%>

 <%
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String gender=request.getParameter("gender");
 String doj=request.getParameter("doj");
 String address=request.getParameter("address");
 String designation=request.getParameter("desgn");
 int payscale=Integer.parseInt(request.getParameter("pay"));
 String roles=request.getParameter("roles");
%>
<%
String[] previlage=request.getParameterValues("previlage");
String str="";
for(int i=0;i<previlage.length;i++)
{
str=str+previlage[i];
}
%>
<%
PreparedStatement ps=con.prepareStatement("insert into staff values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,gender);
ps.setString(4,doj);
ps.setString(6,address);
ps.setString(5,designation);
ps.setInt(7,payscale);
ps.setString(8,roles);
ps.setString(9,str);
ps.executeUpdate();
%>
<%
String password=request.getParameter("pass");
%>
<%
PreparedStatement ps1=con.prepareStatement("insert into login values(?,?,?,?)");
ps1.setString(1,id);
ps1.setString(2,password);
ps1.setString(3,roles);
ps1.setString(4,str);
ps1.executeUpdate();
%>
<center><h1>Insert Successfully</h1>
<a href="addstaff.jsp">Add Staff</a></center>
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
