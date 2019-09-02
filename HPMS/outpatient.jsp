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
<div align="right"><a href="outpat1.jsp"><h3>Back</h3></a></div>
 <center><h1>OutPatient</h1></center>
 <center>
 <form name="myform" action="outpatientdb.jsp">
 <table align="center">
 <tr><td>PatientId</td>
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

 <td>Date</td>
 <td><input type="text" name="date"></td>
 </tr>

 <tr>
 <td>Patient Name</td>
 <td><input type="text" name="pname"></td>
 </tr>

<tr>
<td>Age</td>
<td><input type="text" name="age"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td>
</tr>

<tr>
<td>Address</td><td><input type="text" name="addr"></td>
</tr>

<tr>
<td>Doctor Name</td>
<td><input type="text" name="dname"></td>
<td>Speciality</td>
<td><select name="spl">
<option value=""selected>
<option>ChildrenSpecialist</option>
<option>HeartSurgeon</option>
<option>Gynacologist</option></select></td>
</tr>

<tr>
<td>Date Of Appointment</td><td><input type="text" name="doa"></td>
<td>Time</td>
<td><input type="text" name="time"></td>
</tr>

<tr>
<td>Complaint</td>
<td><input type="text" name="comp"></td>
</tr>

<tr>
<td>Illness History</td>
<td><input type="text" name="illnesshistory"></td>
</tr>
</table>
<br><table>
<tr>
<td><input type="submit" value="Insert"></td>
<td><input type="reset" value="Reset"></td>
</tr>

</table>
</center>
</form>
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
