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
    
    <div id="content_wrapper"><br><br>
<center><h2>Edit InPatient Details</h2></center>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<div align="right">
<a href ="viewinpatient.jsp">
<b>
Back
</b>
</a>
</div>
<%! 
String id;
%>
 <%
 
int registration=Integer.parseInt(request.getParameter("registration"));
String diagnosis=request.getParameter("diagnosis");
String operationtitle=request.getParameter("operationtitle");
int age=Integer.parseInt(request.getParameter("age"));
%>
<%
 id=request.getParameter("id");
%>
<%
PreparedStatement ps1=con.prepareStatement("update pat_info set registration=?,diagnosis=?,operation_title=?,age=? where id="
+id);
ps1.setInt(1,registration);
ps1.setString(2,diagnosis);
ps1.setString(3,operationtitle);
ps1.setInt(4,age);
ps1.executeUpdate();
%>
  <center>
 <h2>InPatient Details Updated Sucessfully</h2>
 </center>
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
