<%
if(session.getAttribute("userid")==null)
       {
    response.sendRedirect("login-new.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="body">



		<div class="body">
			<h1>Welcome Admin!</h1>
		</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

	</tiles:putAttribute>
</tiles:insertDefinition>
