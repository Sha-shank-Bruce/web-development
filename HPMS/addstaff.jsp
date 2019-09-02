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
 <div align="right"><a href="staff.jsp"><h3>Back</h3></a></div>
 <center><h1>Add Staff</h1>
 <form name="myform" action="addstaffdb.jsp">
 <table>
 <tr>
 <td>ID</td><td><input type="text" name="id"></td>
<td>Name</td> <td><input type="text" name="name"></td></tr>
<tr><td>Gender</td>
<td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>DOJ</td><td><input type="date" name="doj"></td>
<td>Address</td><td><input type="text" name="address"></td></tr>

<tr>
<td>Designation</td>
<td><select name="desgn">
<option value=""selected>
<option>Doctor</option>
<option>Asst.Doctor</option>
<option>Receptionist</option>
 <option>Nurse</option>
 </select></td>
 <td>PayScale</td><td>
 <input type="text" name="pay"></td></tr><br><br>
 <tr><td>Roles</td></br></br>
 <td><select name="roles">
 <option value=""selected>

<option>Doctor</option>
<option>Asst.Doctor</option>
<option>Receptionist</option>
 <option>Nurse</option>
 </select></td></tr>

 <tr>
 <td>Password</td><td><input type="text" name="pass"></td>
 </tr>
 <script>
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
<tr><td>Permissions</td><td>
All<input type="checkbox" name="previlage"  value="all" onClick="selectall()"/>
Insert<input type="checkbox"name="previlage" value="insert"onClick="check(document.myform.previlage[1])"/>
Update<input type="checkbox"name="previlage" value="update"onClick="check(document.myform.previlage[2])"/>
Delete<input type="checkbox"name="previlage" value="delete"onClick="check(document.myform.previlage[3])"/>
View<input type="checkbox"name="previlage" value="view" onClick="check(document.myform.previlage[4])"/></td></tr>


 </table>
 <table>
 <tr><td><input type="submit" value="Insert"></td>
 <td><input type="reset" value="Reset"></td></tr>
 </table>
 </form>
 </center>
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
