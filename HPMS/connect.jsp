<%@ page import=" java.sql.*"%>
<%@ page import="java.io.*"%>
     <%
//Driver dr=new oracle.jdbc.driver.OracleDriver();
                  //   DriverManager.registerDriver(dr);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:sample","system","sriyu");
               //out.println(con);
                             %>