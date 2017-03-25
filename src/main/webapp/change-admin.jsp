
<%
if(session.getAttribute("userid")==null)
       {
    response.sendRedirect("login-new.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
String userid=(String)session.getAttribute("userid");
%>
<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "fidelity";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<h2 align="center"><font><strong>Admin</strong></font></h2>
<table  class="table table-hover">
<tr>

</tr>
<tr>

<td><b>CUSTOMER_LOGIN_NAME</b></td>
<td><b>INVESTOR_TRADER</b></td>
<td><b>HOUSEHOLD_ID</b></td>
<td><b>TYPE</b></td>
<td><b>CHANGE</b></td>
</tr>

<%
try{ 
  

      
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM customer where TYPE='admin' and CUSTOMER_LOGIN_NAME !='"+userid+"'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>

<form action="ctype.jsp" method="get">
<td><%=resultSet.getString("CUSTOMER_LOGIN_NAME") %></td>
<td><%=resultSet.getString("INVESTOR_TRADER") %></td>
<td><%=resultSet.getString("HOUSEHOLD_ID") %></td>
<td><%=resultSet.getString("TYPE") %></td>
<td>
<input type="checkbox" name="uname" value="<%=resultSet.getString("CUSTOMER_LOGIN_NAME")%>"/>

</td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<input type="submit" value="Change" name="change" class="btn btn-default"/>
</form>
<button type="button" class="btn btn-default btn-arrow-left"  onclick="goBack()">Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>
