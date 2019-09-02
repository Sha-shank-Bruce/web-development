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
  <div align="right"><a href="receptionist.jsp"><h3>Back</h3></a></div>
 <center><h1>InPatient</h1>
 <form name="myform" action="inpatientdb.jsp">
<table><tr><td>PatientId</td>
 <td><select name="id"><option value=""selected>
<%!
String s;
int id;
%>
<%
Statement st=con.createStatement();
s="select * from registration";
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
id=rs.getInt(1);
%>
<option><%=id%></option>
<%
}
%>
</select>
</td>

<td>RoomNo</td><td><input type="text" name="roomno"></td></tr>
 <tr><td>Patient Name</td><td><input type="text" name="pname"></td>
<td>Age</td><td><input type="text" name="age"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>Address</td><td><input type="text" name="addr"></td></tr>
<tr><td>Name Of The Father/Husband/Guardian</td><td><input type="text" name="name"></td></tr>
<tr><td>ReferingDoctor</td><td><input type="text" name="rdoc"></td>
<tr><td>TreatingConsultant</td><td><input type="text" name="tc"></td></tr>
<tr><td>Date Of Admission</td><td><input type="text" name="doa"></td>
<td>ATime:</td><td><input type="text" name="atime"></td></tr>
<tr><td>Date Of Discharge</td><td><input type="text" name="dod"></td>
<td>DTime:</td><td><input type="text" name="dtime"></td></tr>
 
</table>

<hr>

<h1>Patient's Information</h1>
<table >
<tr>
<td>ID</td>
<td><input type="text" name="id"></td>
</tr>

<td>Name</td>
<td><input type="text" name="pname"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td>
</tr>

<tr>
<td>Age</td>
<td><input type="text" name="age"></td>
</tr>

<tr>
<td>Registration</td>
<td><input type="text" name="regis"></td>
</tr>

<tr>
<td>Diagnosis</td>
<td><input type="text" name="diag"></td>
</tr>

<tr>
<td>Operation Title</td>
<td><input type="text" name="operationtitle"></td>
</tr></table>

<hr>

<table>

<h1>Relative Information<h1>
<table >
<tr>
<td>ID</td>
<td><input type="text" name="id"></td>
</tr>

<tr>
<td>Name</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td>
</tr>

<tr>
<td>Age</td>
<td><input type="text" name="age"></td>
</tr>

<tr>
<td>Address</td>
<td><input type="text" name="address"></td>
</tr>

<tr>
<td>RelationShip with the Patient</td>
<td><input type="text" name="relation"></td>
</tr>
</table>

<table><tr><td><input type="submit" value="Insert"></td>
  <td><input type="reset" value="Reset"></td></tr></table>

 </form>
</center><br><br>
    	
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
