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
 <center>   
 <h2>Edit InPatient Details</h2></center>
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
<%! String address;
 int age;
 %>
 <%
  String  id=request.getParameter("id");
 int roomno=Integer.parseInt(request.getParameter("roomno"));
 address=request.getParameter("address");
 age=Integer.parseInt(request.getParameter("age"));
 String guardian=request.getParameter("guardian");
 String rdoc=request.getParameter("rdoc");
 String doa=request.getParameter("doa");
 String toa=request.getParameter("toa");
 String dod=request.getParameter("dod");
 String tod=request.getParameter("tod");
 String treatingconsultant=request.getParameter("tconsult");
 %>
 <%
 PreparedStatement ps=con.prepareStatement("update in_patient set room_no=?,age=?,address=?,name_of_guardian=?,ref_doc=?,treating_consultant=?,date_of_admision=?,time_of_admision=?,date_of_discharge=?,time_of_discharge=? where pid="+id);
  ps.setInt(2,age);
 ps.setString(3,address);
  ps.setInt(1,roomno);
 ps.setString(4,guardian);
 ps.setString(7,doa);
 ps.setString(8,toa);
 ps.setString(10,tod);
 ps.setString(9,dod);
 ps.setString(6,treatingconsultant);
 ps.setString(5,rdoc);
 ps.executeUpdate();
 %>
  <center>
 <h2>InPatient Details Updated Sucessfully</h2>
 </center>
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
