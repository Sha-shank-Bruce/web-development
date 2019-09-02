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
    
    <div id="content_wrapper"><BR>
<CENTER> <h2>Edit Patient Status Details</h2></CENTER>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<div align="right">
<a href ="viewpatientstatus.jsp">
<b>
Back
</b>
</a>
</div>
 <%
  String id=request.getParameter("id");
 String dt=request.getParameter("dt");
String rdoc=request.getParameter("rdoc");
String speciality=request.getParameter("spl");
String condofpat=request.getParameter("cond");
String status=request.getParameter("status");
String prescription=request.getParameter("prescription");
int wardno=Integer.parseInt(request.getParameter("wardno"));
%>
 <%
 PreparedStatement ps=con.prepareStatement("update status set ref_doc=?,speciality=?,ward=?,cond_patient=?,status=?,prescription=?,day=? where pid="+id);

 ps.setString(1,rdoc);
 ps.setString(2,speciality);
 ps.setInt(3,wardno);
 ps.setString(4,condofpat);
 ps.setString(5,status);
 ps.setString(6,prescription);
 ps.setString(7,dt);
 ps.executeUpdate();
 %>
 <center>
 <h2>Patient Status Details Updated Sucessfully</h2>
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
