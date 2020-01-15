<%@ page import="java.sql.*,databaseconnection.*"%>

<%@ include file="aheader.jsp"%>



<font size="" color=""><h2> Performance Metrics</h2></font>
<p>The web revisitation performance metrics include pages’ finding rate, average precision, average recall and average rank error for a set of re-finding requests.</p><br><br>
<table>
<%Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	String sss = "select * from feedback ";
	double v1=0.0;
		double v2=0.0;
			double v3=0.0;
	ResultSet rs=ss.executeQuery(sss);
	while(rs.next()){
	%>
	
	
	<tr><td><li class="list-group-item">FindRate(Q) <em>[1/Q]</em><td><li class="list-group-item"><% v1=(1/rs.getDouble("q"));%><%=v1%>
	
	<tr><td><li class="list-group-item">AvgPrecision(Q) <em>[(m/n)/Q]</em><td><li class="list-group-item"><%  v2=(rs.getDouble("m")/rs.getDouble("n"))/rs.getDouble("q");%><%=v2%>
	
	<tr><td><li class="list-group-item">AvgRecall(Q) <em>[(m/u)/Q]</em><td><li class="list-group-item"><% v3=(rs.getDouble("m")/rs.getDouble("u"))/rs.getDouble("q");%><%=v3%>
	

	<%
	}

	ss.executeUpdate("delete from graph");
	ss.executeUpdate("insert into graph values ('0','"+v1+"','"+v2+"','"+v3+"')");

%>
</table>


<br><br>
<a href="graph.jsp">Graph</a>
<br>
<%@ include file="footer.jsp"%>