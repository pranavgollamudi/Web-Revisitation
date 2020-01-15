<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>

<font size="" color=""><h2>Welcome <%=session.getAttribute("name")%></h2></font>
<%
String ip=GetMyIPAddress.main();
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

st1.executeUpdate("insert into location values ('"+session.getAttribute("email")+"','"+ip+"','"+request.getParameter("id")+"') ");
	
response.sendRedirect("u_home.jsp");

%>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<%@ include file="footer.jsp"%>