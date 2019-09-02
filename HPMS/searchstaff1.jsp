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
        <%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<div align="right"><a href ="searchstaff.jsp">
<h6>Back</h6>
</a></div>

   <%!
Statement st1;
String s,name,gender,doj,designation,address,payscale,role,id,permission;
%>
<%
 id =request.getParameter("id");
%>
<%
st1=con.createStatement();
s="select * from staff where id="+id;
ResultSet rs1=st1.executeQuery(s);
%>
<center>
<form action=""  name="ff2">
<table border="4">
<th>Id</th>
<th>Name</th>
<th>Gender</th>
<th>D.O.J</th>
<th>Designation</th>
<th>Address</th>
<th>Payscale</th>
<th>Role</th>
<th>Permission</th>
<%
if(rs1.next())
{
        id=rs1.getString(1);
	name=rs1.getString(2);
	gender=rs1.getString(3);
    doj=rs1.getString(4);
	designation=rs1.getString(5);
	address=rs1.getString(6);
    payscale=rs1.getString(7);
    role=rs1.getString(8);
	permission=rs1.getString(9);
%>
<tr>
<td ><font color="purple"size="+1"><i><%=id%></font></td>
<td ><font color="purple"size="+1"><i><%=name%></font></td>
<td><font color="purple"size="+"><%=gender%></font></td>
<td><font color="puple"size="+"><%=doj%></font></td>
<td><font color="purple"size="+"><%=designation%></font></td>
<td><font color="purple"size="=+"><%=address%></font></td>
<td><font color="purple"size="+"><%=payscale%></font></td>
<td><font color="purple"size="+"><%=role%></font></td>
<td><font color="purple"size="+"><%=permission%></font></td>
<%
}
%>
</tr>
</table>
</form>
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
