
<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("login.jsp");
}

String s_name = request.getParameter("s_name");    
    String s_sym = request.getParameter("s_sym");    
    String s_ind = request.getParameter("s_ind");
    String s_val = request.getParameter("s_val");
   // out.println(s_name+s_sym+s_ind+s_val);
    
    
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fidelity",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into stock_master(STOCK_NAME,STOCK_SYMBOL, STOCK_INDUSTRY, STOCK_VALIDITY) values ('"+s_name+"','" + s_sym + "','" + s_ind +"','"+s_val+ "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("stockmaster.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("admin.jsp");
    }
%>