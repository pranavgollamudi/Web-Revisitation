<%@ include file="header.jsp"%>
<%
session.invalidate();%>

  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>

<br>
<h1>Login Page for User</h1></font>
<br>


					
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<table><tr><td><font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3></table>");
                                                       }
                                               %>
											   


<div class="opinion">
				
<form method="post" action="ulogin.jsp">


	<input type="text" name="uid" required placeholder="Username"  ><br>
	<input type="password" name="pwd" required placeholder="Password" ><br>
	<input class="submit" type="submit"  value="  Login   &nbsp;&nbsp;   " >

</form>

				</div>							   



<br><br><br>
<%@ include file="footer.jsp"%>