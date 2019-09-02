<html>
    <head>
        <title>Previlage Page</title>
    </head>
    <body>

<body bgcolor="magenta">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ include file="conn.jsp"%>
<%@ page language="java"%>
<%!

String id;
String roles;
String password;
String permission;

%>
<%
 id=(String)session.getAttribute("id");
%>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where userid='"+id+"'");
if(rs.next())
{
roles=rs.getString(3);
permission=rs.getString(4);
}
%>
</body>
</html>


