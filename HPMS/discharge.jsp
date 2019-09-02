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
 <div align="right"><a href="dis1.jsp"><h3>Back</h3></a></div>
 <center><h1>Discharge Form<h1>
<form name="myform" action="dischargedb.jsp">
 <table>
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

  <td>RoomNo</td><td><input type="text" name="roomno"></td></tr>
 <tr><td>PatientName</td><td><input type="text" name="name"></td>
 <td>Age</td><td><input type="text" name="age"></td></tr>
 <tr><td>Gender</td><td><input type="radio" name="gender" value="male">Male</td><td><input type="radio" name="gender" value="female">Female</td></tr>
 <tr><td>Consultant</td><td><input type="text" name="consult"></td></tr>
 <tr><td>Date Of Admission</td><td><input type="text" name="doa"></td>
 <td>Time Of Admission</td><td><input type="text" name="toa"></td></tr>
 <tr><td>Date Of Surgery</td><td><input type="text" name="dos"></td>
 <td>Time Of Surgery</td><td><input type="text" name="tos"></td></tr>
 <tr><td>Date of Discharge</td><td><input type="text" name="dod"></td>
 <td>Time Of Discharge</td><td><input type="text" name="tod"></td></tr>
 <tr><td>History Final Diagnosis</td><td><input type="text" name="hfd"></td></tr>
 <tr><td>Complaints</td><td><input type="text" name="comp"></td></tr>
 <tr><td>Investigation</td><td><input type="text" name="invest"></td></tr>
 <tr><td>Treatment Given</td><td><input type="text" name="treatment"></td></tr>
 <tr><td>Condition At The Time Of Discharge </td><td><input type="text" name="cond"></td></tr>
 <tr><td>Review</td><td><input type="text" name="review"></td></tr></table>
 <table><tr><td><input type="submit" value="Insert"></td>
 <td><input type="reset" value="Reset"></td></tr></table>
 </form></center><br><br>
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
