<%@ page import ="java.sql.*" %>
<html>
<body>
<%! String[] users; %>
<center>
<%    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
   users = request.getParameterValues("uname");

   if (users != null) 
   {
       try{
      for (int i = 0; i <users.length; i++) 
      {
 
      //out.println("<br>"+users[i]);
      
          String s=users[i]; 
 st.executeUpdate("update customer set TYPE = 'admin' WHERE CUSTOMER_LOGIN_NAME = '"+s+"'");
    response.sendRedirect("change-user.jsp");
      }
      }
catch(Exception e){
out.println(e);
    }
   }
           
     
   //else out.println ("<b>none<b>");
%>
</center>
</body>
</html>