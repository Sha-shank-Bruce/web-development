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
    
<br><br><div align="right"><a href="doctor.jsp">Back</a></div>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>
<%!
Statement st1;
String id,name,gender,consultant,doa,toa,dos,tos,dod,tod,diagnosis,complaints,invest,treatment,cond,review;
int roomno,age;
%>
<%
 st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from discharge");
%>
<center>
<form>
<table border="3">
<th>Id</th>
<th>RoomNo</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Consultant</th>
<th>Date Of Admission</th>
<th>Time Of Admission</th>
<th>Date Of Surgery</th>
<th>Time Of Surgery</th>
<th>Date Of Discharge</th>
<th>Time Of Discharge</th>
<th>Final Diagnosis</th>
<th>Complaints</th>
<th>Investigation</th>
<th>Treatment Given</th>
<th>Condition At The Time Of Discharge</th>
<th>Review</th>
<%
while(rs1.next())
{
	id=rs1.getString(1);
	roomno=rs1.getInt(2);
	name=rs1.getString(3);
	age=rs1.getInt(5);
	gender=rs1.getString(4);
    consultant=rs1.getString(6);
    doa=rs1.getString(7);
	toa=rs1.getString(8);
	dos=rs1.getString(9);
    tos=rs1.getString(10);
    dod=rs1.getString(11);
	tod=rs1.getString(12);
	diagnosis=rs1.getString(13);
	complaints=rs1.getString(14);
	invest=rs1.getString(15);
	treatment=rs1.getString(16);
	cond=rs1.getString(17);
	review=rs1.getString(18);
%>

<tr><td ><i><%=id%></td>
<td ><i><%=roomno%></td>
<td ><i><%=name%></td>
<td><%=age%></td>
<td><%=gender%></td>
<td><%=consultant%></td>
<td><%=doa%></td>
<td><%=toa%></td>
<td><%=dos%></td>
<td><%=tos%></td>
<td><%=dod%></td>
<td><%=tod%></td>
<td><%=diagnosis%></td>
<td><%=complaints%></td>
<td ><i><%=invest%></td>
<td ><i><%=treatment%></td>
<td ><i><%=cond%></td>
<td ><i><%=review%></td>
<%
}
%>


</tr>
</table>
</form>
</center>    	
<br><br>                     <div class="more"></div>
                 </div>
                 
            </div>
            
            <div class="service_box float_r">
            
                 <div class="service_text">



                      

      </div>
                 </div>
            	
            </div>
        	
          



</body>
</html>
