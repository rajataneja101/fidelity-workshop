<%@ page import ="java.sql.*" %>
<%
String uname=request.getParameter("uname");
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer where customer_login_name='" + uname + "'");
    while(rs.next()){
   String ques=rs.getString("secret_question");
   String ans=rs.getString("secret_answer");
    session.setAttribute("ques", ques);
      session.setAttribute("ans", ans);
     session.setAttribute("uname", uname);
     }
%>

