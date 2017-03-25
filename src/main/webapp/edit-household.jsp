<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Address</th></tr>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity", "root", "root");
String query = "select * from customer where customer_id='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("CUSTOMER_NAME")%></td>
<td><input type="text" name="household_id" value="<%=rs.getString("HOUSEHOLD_ID")%>"></td>
<td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>