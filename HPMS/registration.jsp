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
 <div align="right"><a href="regis.jsp"><h3>Back</a></div> 
<center><h1>Patient Registration Form</h1>
<form name="myform" action="registrationdb.jsp">
<table><tr><td>FormNo</td><td><input type="text" name="form"></td></tr>
<tr><td>PatientID</td><td><input type="text" name="id"></td></tr>
<tr><td>Patient Name</td><td><input type="text" name="name"></td></tr>
<tr><td>DOB</td><td><input type="text" name="dob"></td></tr>
<tr><td>Age</td><td><input type="text" name="age"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="male">Male</td>
<td><input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>Occupation</td><td><input type="text" name="occupation"></td></tr>
<tr><td>Address</td><td><input type="text" name="addr"></td></tr>
<tr><td>EmailID</td><td><input type="text" name="email"></td></tr>
<tr><td>Mobile No.</td><td><input type="text" name="mno"></td></tr>
<tr><td>Ref.Doc</td><td><input type="text" name="rdoc"></td></tr>
<tr><td>Patient type</td><td><input type="text" name="ptype"></td></tr>
<tr><td>If Inpatient bedno. </td><td><input type="text" name="bedno"></td></tr>
</table><table><tr><td><input type="submit" value="Insert"></td>
<td><input type="reset" value="Reset"></td></tr>
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
