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
    
<br><h2 align="center">Edit Staff Details</h2>

<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="conn.jsp"%>

<form name="myform" action="./editstaff1.jsp" >
<div align="right">
<a href ="viewstaff.jsp">
<b>
Back
</b>
</a>
</div>
<%!
Statement st1;
String name,gender,doj,designation,address,payscale,s,id,roles,password;

%>
<center>
<%
id =request.getParameter("id");

%>
<%
st1=con.createStatement();
s="select * from login where userid="+id;
ResultSet rs4=st1.executeQuery(s);
if(rs4.next())
{
 roles=rs4.getString(3);
 password=rs4.getString(2);
}
%>
<%
st1=con.createStatement();
s="select * from staff where id="+id;
ResultSet rs1=st1.executeQuery(s);
if(rs1.next())
{
      id=rs1.getString(1);
	name=rs1.getString(2);
	gender=rs1.getString(3);
    doj=rs1.getString(4);
	designation=rs1.getString(5);
	address=rs1.getString(6);
    payscale=rs1.getString(7);
    roles=rs1.getString(8);
}
%>
<table>
<tr>
<td>Id</td><td><input type="text" name="id" value="<%=id%>" disabled>
<input type="hidden" name="id" value="<%=id%>"></td>
 </tr>
<tr align="left">
<td> Name</td><td><input type="text" name="name" value="<%=name%>" size="20" disabled></td>
</tr>
<tr><td>Gender</td>
<td><input type="radio" name="gender" value="<%=gender%>" disabled>Male</td>
<td><input type="radio" name="gender" value="<%=gender%>" disabled>Female</td></tr>
<tr>
<td>D.O.J</td><td><input type="text" name="doj" value="<%=doj%>" disabled></td>
</tr>
<tr>
<td>Designation</td>
<td><select name="desgn" value="<%=designation%>">
<option>select</option>
<option>Administrator</option>
 <option>Doctor</option>
 <option>Receptionist</option>						    
</select></td> 
<tr>
<td>Address</td><td><input type="text" name="address" value="<%=address%>" ></td>
</tr>             
<tr>                
<td>payscale</td><td><input type="text" name="pay" value="<%=payscale%>"></td>
<td>roles</td><td><input type="text" name="roles" value="<%=roles%>"></td>
</tr></table>
<br><hr>
<table align="center">                 
<tr>
<td>*Password</td><td><input type="text" name="pass" value="<%=password%>"></td>
</tr>
<tr>
<td>Roles</td>
<td><select name="roles" value="<%=roles%>">
<option>select</option>
<option>Administrator</option>
<option>Doctor</option>
<option>Receptionist</option>
</select></td>
</tr>
</table>
 <script type="" >

function selectall()
{
if(document.myform.previlage[0].checked==true)
{
document.myform.previlage[1].disabled=true;
document.myform.previlage[2].disabled=true;
document.myform.previlage[3].disabled=true;
document.myform.previlage[4].disabled=true;
}
else
{
document.myform.previlage[1].disabled=false;
document.myform.previlage[2].disabled=false;
document.myform.previlage[3].disabled=false;
document.myform.previlage[4].disabled=false;
}
}
function check(ch)
{
if(ch.checked==true)
{
document.myform.previlage[0].disabled=true;
}
else
{
document.myform.previlage[0].disabled=false;
}
}
</script>
<table>
<tr><td>permissions</td><td>
all<input type="checkbox" name="previlage"  value="all" onClick="selectall()"/>
insert<input type="checkbox"name="previlage" value="insert" onClick="check(document.myform.previlage[1])"/>
update<input type="checkbox"name="previlage" value="update" onClick="check(document.myform.previlage[2])"/>
delete<input type="checkbox"name="previlage" value="delete" onClick="check(document.myform.previlage[3])"/>
view<input type="checkbox"name="previlage" value="view" onClick="check(document.myform.previlage[4])"/></td></tr>
<tr><td>
<input type="submit" value="update"></td>
<td><input type="reset" value="reset"></td>
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
