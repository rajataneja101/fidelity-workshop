<%@page import="java.sql.*"%>
<%
try{
String ide=request.getParameter("id");
int num=Integer.parseInt(ide);
int house=Integer.parseInt(request.getParameter("household_id"));


Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity","root", "root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update customer set HOUSEHOLD_ID="+house+" where customer_id='"+num+"'");
response.sendRedirect("household.jsp");
}
catch(Exception e){
out.println(e);
}
%>