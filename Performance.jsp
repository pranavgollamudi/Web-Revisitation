<%@ page import="java.sql.*,databaseconnection.*"%>

<%@ include file="aheader.jsp"%>



<font size="" color=""><h2> Performance Metrics</h2></font>
<p>The web revisitation performance metrics include pages’ finding rate, average precision, average recall and average rank error for a set of re-finding requests.</p><br><br>
<table>
<%Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	String sss = "select * from feedback ";
	
	ResultSet rs=ss.executeQuery(sss);
	while(rs.next()){
	%>
	<tr><td><li class="list-group-item">No of user’s web revisitation request Q<td><li class="list-group-item"><%=rs.getString("q")%>
	<tr><td><li class="list-group-item">No of result pages n<td><li class="list-group-item"><%=rs.getString("n")%>
	<tr><td><li class="list-group-item">No of target pages (clicked) u<td><li class="list-group-item"><%=rs.getString("u")%>
	<tr><td><li class="list-group-item">No of relevant result pages m<td><li class="list-group-item"><%=rs.getString("m")%>
	<%
		
	}
%>
<form method="post" action="Performance2.jsp">
	<tr><td><td><input type="submit" class="form-control"value=" Caluculate">
</form>
</table>
<br><br><br>
<%@ include file="footer.jsp"%>