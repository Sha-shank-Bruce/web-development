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
<BR><CENTER> <h2>Edit Staff Details</h2></CENTER>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<div align="right">
<a href ="viewstaff.jsp">
<b>
Back
</b>
</a>
</div>
<%!
String id,name,gender,doj,designation,address,payscale,role,s="";
%>
<center>
<%
 String id=request.getParameter("id");
 String address=request.getParameter("address");
 String designation=request.getParameter("desgn");
 int payscale=Integer.parseInt(request.getParameter("pay"));
  String password=request.getParameter("pass");
 String roles=request.getParameter("roles");
  String[] permission=request.getParameterValues("previlage");
  for(int i=0;i<permission.length;i++)
  {
	s=s+permission[i];
  }
%>
<%
PreparedStatement ps=con.prepareStatement("update staff set designation=?,address=?,payscale=?,role=?,permission=? where id="+id);
ps.setString(2,address);
ps.setString(1,designation);
ps.setInt(3,payscale);
ps.setString(4,roles);
ps.setString(5,s);
ps.executeUpdate();
%>
<%
PreparedStatement ps1=con.prepareStatement("update login set password=?,roles=?,permission=? where userid="+id);
ps1.setString(2,roles);
ps1.setString(1,password);
ps1.setString(3,s);
ps1.executeUpdate();
%>
</center>

<table align="center">
<tr>
<td>
<br><br><br><br><br>
<td><H1>Staff Details Updated Sucessfully!</H1></td></tr>
</table>
<%
s="";
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
