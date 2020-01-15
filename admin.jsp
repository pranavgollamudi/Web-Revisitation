<%@ include file="header.jsp" %>


<%
session.invalidate();%>
	                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("exp"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
                                                       }

			
	           
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>



						<div class="opinion">
				<h3>Admin<span> Login</span></h3>
			     <form method="post" action="alogin.jsp" >
					
					<input type="text" name="uid" placeholder="User Id" onfocus="this.value = '';"  required="" >
					
					<input type="password" name="pwd" placeholder="Password" onfocus="this.value = '';"  required="" >
					<input type="submit" value="Login">
				</form>
			</div>

					   
					    <div class="clearfix"></div>
				  </div>
			</div>
		</div>
<br><br><br><br><br><br><br>
		<%@ include file="footer.jsp"%> 