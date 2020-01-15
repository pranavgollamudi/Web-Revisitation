<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>


<%@ include file="aheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
													   message=request.getParameter("id");
                                                       if(message!=null )
                                                       {
                                                               out.println("<script type=text/javascript> alert('Activity Added !!');</script>");
                                                       }
                                               %>



<h1>Activity Context Tree</h1>
<hr>
<%
int count=0;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from child_1");
%>	

<h2>
&lambda;3 Context.
</h1>
       
<table align="center" cellpadding="0" >
<tr><td><h3><font size="" color="#127655"><b><b>SNo<td><h3><font size="" color="#127655"><b>&lambda;3 Context
<%while(rs.next())
	{
		%>
<tr><td><%=++count%>
<td><%=rs.getString(1)%>
<%
	}
%>	
<form method="post" action="addchild_1.jsp">
	
<tr><td><td><input required  type="text" name="level1" placeholder="Enter &lambda;3 Context" size="40"><input required  type="submit" value="   ADD  ">
</form>
</table>

<hr>
<br><br>




<h2>
&lambda;2 Context.
</h1>

<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_2");

%>	
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#127655"><b>Sno</font><td><h3><font size="" color="#127655"><b>&lambda;3 Context</font><td><h3><font size="" color="#127655"><b>&lambda;2 Context</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=++count%><td><%=rs.getString(1)%><td><%=rs.getString(2)%>

<%
	}
%>	
</table>
	



<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_1");

%>	
<form method="post" action="addchild_2.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#127655"><b>Select &lambda;3 Context</font>
<tr><td><select name="level1">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>

<%
	}
%>	

</select><br>
	
<tr><td><input required  type="text" name="level2"  placeholder="Enter &lambda;2 Context" size="30"><input type="submit" value="   ADD  ">
</form>
</table>
<hr>
<!-- **********************************************************88 -->


<br><br>
<h1>&lambda;1 Context.
</h1>

<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_3");

%>	
<h3>
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#127655"><b>Sno<td><h3><font size="" color="#127655"><b>&lambda;3 Context
 </font><td><h3><font size="" color="#127655"><b>&lambda;2 Context</font><td><h3><font size="" color="#127655"><b>&lambda;1 Context</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=++count%><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%>

<%
	}
%>	
</table>

<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_2");

%>	
<form method="post" action="addchild_3.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#127655"><b>Select &lambda;2  Context</font>
<tr><td><select name="level2">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>,<%=rs.getString(2)%>"><%=rs.getString(2)%>

<%
	}
%>	

</select><br>
	
<tr><td><input type="text" name="level3" size="30" placeholder="Enter &lambda;1  Context"><input type="submit" value="   ADD  ">
</form>
</table><hr>







<%@ include file="footer.jsp"%>