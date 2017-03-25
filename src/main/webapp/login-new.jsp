
<!DOCTYPE=HTML>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer where customer_login_name='" + userid + "' and customer_login_password='" + pwd + "'");
   
  
    if (rs.next()) {
       /* session.setAttribute("userid", userid);
       // out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");    
      
        response.sendRedirect("success");
  */ ResultSet rs1 = st.executeQuery("select type from customer where customer_login_name='" + userid + "' and customer_login_password='" + pwd + "'");
          rs1.next();
          String a=rs1.getString(1);
          session.setAttribute("userid", userid);
          
    //String a=rs1.getString("account");
    if(a.equals("admin"))
                 {
        
           response.sendRedirect("admin.jsp");
     }
             else if(a.equals("user"))
               {
        response.sendRedirect("user.jsp");
      }
                  
             }
    else 
    {
        String status="Invalid Login! Please enter correct Details!";
        session.setAttribute("status",status);
          response.sendRedirect("login");
    } 
                            
%>
     