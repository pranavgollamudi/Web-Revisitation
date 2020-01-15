<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%@ include file="uheader.jsp"%>

<div class="opinion">
<form method="post" action="revisitation1.jsp" name="form2" id="form2" onsubmit="return validate()">
	
<h1> Web Revisitation by Context and Content Keywords</h1><br><br>
        
<input type="text" name="context" id="ids"  required  readonly placeholder="Enter Context Keywords" />
<input type="text" name="content" required placeholder="Enter Content Keywords" />
<input type="submit" value="Revisit">&nbsp;<input type="reset" value="Clear">

<br>

</center>
</div>
<table background="#fff" cellpadding="10">

<tr ><td valign="top"><h4>Time</h4>
<%try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select Distinct year_ from context  where user_='"+session.getAttribute("email")+"'  ";

	ResultSet rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}%>


<%sss1 = "select Distinct month_ from context  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}%>
<%sss1 = "select Distinct month2_ from context  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}	%>







<td valign="top"><h4>Location</h4>


<%sss1 = "select Distinct location from context  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}	%>





<tr><td valign="top"><h4>&lambda;3</h4>
<%sss1 = "select Distinct lamda3 from context2  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}	%>


	
<td valign="top"><h4>&lambda;2</h4>
<%sss1 = "select Distinct lamda2 from context2  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}	%>

	
<td valign="top"><h4>&lambda;1</h4>
<%sss1 = "select Distinct lamda1 from context2  where user_='"+session.getAttribute("email")+"'  ";

	 rs=st1.executeQuery(sss1);
	while(rs.next())
	{
%>

<input type="checkbox" name="id"  onclick="checkBox()" value="<%=rs.getString(1)%>">&nbsp;&nbsp;<b><%=rs.getString(1)%><br>
	<%}	%>


<%
}catch(Exception e){}

%>



</table>

<script>
function checkBox() {
var id = document.forms[0];
var txt = "";
var i;
for (i = 0; i < id.length; i++) {
if (id[i].checked) {
txt = txt + id[i].value + "; ";
}
}
if(txt.length>0)
	{
	document.getElementById("ids").value =  txt;
}

}
</script>
<script>
function validate() {
    submitFlag = true;
    if(document.form2.ids.value.length<8)  {
        submitFlag=false;
        alert("Choose some Context Options");
    }
	
	
    return submitFlag;
}
</script>
</form>


<br><br><br><br><br><br>
<%@ include file="footer.jsp"%>