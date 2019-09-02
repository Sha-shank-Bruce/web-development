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
    
 <div align="right"><a href="viewinpat2.jsp"><h3>Back</h3></a></div>
 <%@ page import="java.sql.*"%>
 <%@ include file="conn.jsp"%>
 <%@ page import="java.io.*"%>
 <%@ page language="java"%>
 <%! String pname,gender,address;
 int age;
 %>
 <%
  String  id=request.getParameter("id");
  pname=request.getParameter("pname");
 int roomno=Integer.parseInt(request.getParameter("roomno"));
 String gender=request.getParameter("gender");
 address=request.getParameter("addr");
 age=Integer.parseInt(request.getParameter("age"));
 String guardian=request.getParameter("name");
 String rdoc=request.getParameter("rdoc");
 String doa=request.getParameter("doa");
 String time=request.getParameter("atime");
 String dod=request.getParameter("dod");
 String time1=request.getParameter("dtime");
 String treatingconsultant=request.getParameter("tc");
 %>
 <%
 PreparedStatement ps=con.prepareStatement("insert into in_patient values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
 ps.setString(1,id);
 ps.setString(3,pname);
 ps.setInt(4,age);
 ps.setString(6,address);
 ps.setString(5,gender); 
 ps.setInt(2,roomno);
 ps.setString(7,guardian);
 ps.setString(10,doa);
 ps.setString(11,time);
 ps.setString(13,time1);
 ps.setString(12,dod);
 ps.setString(9,treatingconsultant);
 ps.setString(8,rdoc);
 ps.executeUpdate();
 %>
 <%
int registration=Integer.parseInt(request.getParameter("regis"));
String diagnosis=request.getParameter("diag");
String operationtitle=request.getParameter("operationtitle");
%>
<%
PreparedStatement ps1=con.prepareStatement("insert into pat_info values(?,?,?,?,?,?,?)");
ps1.setString(1,pname);
ps1.setString(2,gender);
ps1.setInt(3,registration);
ps1.setString(4,diagnosis);
ps1.setString(5,operationtitle);
ps1.setInt(6,age);
ps1.setString(7,id);
ps1.executeUpdate();
%>
<%
String name=request.getParameter("name");
String raddress=request.getParameter("address");
String rgender=request.getParameter("gender");
String relation=request.getParameter("relation");
int age=Integer.parseInt(request.getParameter("age"));
%>
<%
PreparedStatement ps2=con.prepareStatement("insert into rel_info values(?,?,?,?,?,?)");
ps2.setString(1,name);
ps2.setString(2,rgender);
ps2.setString(3,raddress);
ps2.setString(4,relation);
ps2.setInt(5,age);
ps2.setString(6,id);
ps2.executeUpdate();
%> 
 <h1>Insert Succesfully</h1>
 <a href="inpatient.jsp">Inpatient</a>
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
