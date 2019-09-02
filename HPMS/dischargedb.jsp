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
    
 <div align="right"><a href="viewdis2.jsp"><h3>Back</a></div>  <HTML>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%
  int id=Integer.parseInt(request.getParameter("id"));
 String pname=request.getParameter("name");
 String gender=request.getParameter("gender");
 int roomno=Integer.parseInt(request.getParameter("roomno"));
 int age=Integer.parseInt(request.getParameter("age"));
 String consultant=request.getParameter("consult");
 String doa=request.getParameter("doa");
 String toa=request.getParameter("toa");
 String dos=request.getParameter("dos");
 String tos=request.getParameter("tos");
 String dod=request.getParameter("dod");
 String tod=request.getParameter("tod");
 String finaldiag=request.getParameter("hfd");
 String complaints=request.getParameter("comp");
 String investigation=request.getParameter("invest");
 String treatmentgiven=request.getParameter("treatment");
 String condition=request.getParameter("cond");
 String review=request.getParameter("review");
 %>
 <%
 PreparedStatement ps=con.prepareStatement("insert into discharge values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1,id);
ps.setInt(2,roomno);
ps.setString(3,pname);
ps.setString(4,gender);
ps.setInt(5,age);
ps.setString(6,consultant);
ps.setString(7,doa);
ps.setString(8,toa);
ps.setString(9,dos);
ps.setString(10,tos);
ps.setString(11,dod);
ps.setString(12,tod);
ps.setString(13,finaldiag);
ps.setString(14,complaints);
ps.setString(15,investigation);
ps.setString(16,treatmentgiven);
ps.setString(17,condition);
ps.setString(18,review);
ps.executeUpdate();
%>
<h1>Insert succesfully</h1>
<a href="discharge.jsp">Discharge Form</a>
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
