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
  <div align="right"><a href="login.jsp"><h3>Logout</h3></a></div>
 <center><h1>Feedback Form</h1>
 <form name="myform" action="feedbackformdb.jsp">
 <table>
 <tr>
 <td>I Came As A</td>
 <td><input type="radio" name="x" value="patient">Patient
 <input type="radio" name="x" value="relative">Relative
 <input type="radio" name="x" value="visitor">Visitor</td></tr>
 <tr><td>(Please tick)</td></tr>

 <tr>
 <td>PatientId</td>
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
 <td>Name</td>
 <td><input type="text" name="name"></td>
 </tr>

 <tr><td>Age</td>
 <td><input type="text" name="age"></td>
 </tr>

 <tr><td>Gender</td>
 <td><input type="radio" name="gender" value="male">Male</td>
 <td><input type="radio" name="gender"value="female">Female</td>
 </tr>

 <tr><td>Address</td>
 <td><input type="text" name="addr"></td>
 </tr>
 <tr><td>PhoneNo</td>
 <td><input type="text" name="phno"></td>
 <td>EmailID</td>
 <td><input type="text" name="email"></td></tr>

 <tr><td>BedNo</td>
 <td><input type="text" name="bedno"></td>
 <td>Ward</td>
 <td><input type="text" name="ward"></td>
 </tr>
 <tr>
 <td>Doctor</td>
 <td><input type="text" name="doc"></td></tr>

 <tr><td>Diagnosis</td>
 <td><input type="text" name="diag"></td></tr>

 <tr><td>Treatment</td>
 <td><input type="text" name="treatment"></td></tr>

 <tr><td>The Hospital Environment is</td>
 <td><input type="radio" name="a" value="good">Good
 <input type="radio" name="a" value="average">Average
 <input type="radio" name="a" value="poor">Poor
 </td>
 </tr>

 <tr><td>The Ward Facilities are</td>
  <td><input type="radio" name="b" value="good">Good
 <input type="radio" name="b" value="average">Average
 <input type="radio" name="b" value="poor">Poor
 </td>
 </tr>

 <tr><td>The Toilet(s) are</td>
 <td><input type="radio" name="c" value="good">Good
 <input type="radio" name="c" value="average">Average
 <input type="radio" name="c" value="poor">Poor
 </td>
 </tr>

 <tr><td>The Food/Diet is</td>
  <td><input type="radio" name="d" value="good">Good
 <input type="radio" name="d" value="average">Average
 <input type="radio" name="d" value="poor">Poor
 </td>
 </tr>


 <tr><td>The Service of attending Doctor is</td>
 <td><input type="radio" name="e" value="good">Good
 <input type="radio" name="e" value="average">Average
 <input type="radio" name="e" value="poor">Poor
 </td>
 </tr>

<tr><td>The Service of attending Nurse is</td>
  <td><input type="radio" name="f" value="good">Good
 <input type="radio" name="f" value="average">Average
 <input type="radio" name="f" value="poor">Poor
 </td>
 </tr>

<tr><td>The Hospital billing is</td>
 <td><input type="radio" name="g" value="good">Good
 <input type="radio" name="g" value="average">Average
 <input type="radio" name="g" value="poor">Poor
 </td>
 </tr>

<tr><td>The Reception/Enquiry Sevice is</td>
 <td><input type="radio" name="h" value="good">Good
 <input type="radio" name="h" value="average">Average
 <input type="radio" name="h" value="poor">Poor
 </td>
 </tr>


<tr><td>The Admission Process is</td>
  <td><input type="radio" name="i" value="good">Good
 <input type="radio" name="i" value="average">Average
 <input type="radio" name="i" value="poor">Poor
 </td>
 </tr>

<tr><td>The Discharge Process is</td>
 <td><input type="radio" name="j" value="good">Good
 <input type="radio" name="j" value="average">Average
 <input type="radio" name="j" value="poor">Poor
 </td>
 </tr>
</table>
<p align="center">Special Comment<br>
<textarea rows="6" cols="50" name="sc"></textarea>
</p>


<table><tr><td><input type="submit" value="Submit"></td></tr>
</table>
</form>
</center>    	
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
