<%
if(session.getAttribute("userid")==null)
       {
    response.sendRedirect("login-new.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
%>
<style>
    .footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
.testbox
{
    padding-top: 70px;
padding-bottom:100px;
    margin: 10px auto;
  width: 800px; 
  height: 300px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  
}
.testbox1
{
    padding-top: 50px;
    margin: 20px auto;
  width: 500px; 
  height: 300px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  
}

</style>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <title>Tradr</title>
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="css/template-style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="js/modernizr.js"></script>
      <script type="text/javascript" src="js/responsee.js"></script>
      <script type="text/javascript" src="js/template-scripts.js"></script> 
                 
      <!--[if lt IE 9]>
	      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
      <![endif]-->
   </head>
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->
      <header style="top:0px">
         <nav>
            <div class="line">
               <div class="s-12 l-2">
                  <p class="logo"><strong>Tradr</strong></p>
               </div>
               <div class="top-nav s-12 l-10">
                  <p class="nav-text">Custom menu text</p>
                  <ul class="right">
                     <li><a href="#">Home</a></li>
                     <li class="active-item"><a href="logout.jsp">Logout</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
      
          <div class="footer">
         <div class="line">
            <div class="s-12 l-6">
               <p>Thanks for beliving on us!</p>
               <p>We love you!</p>
            </div>
            <div class="s-12 l-6">
               <a class="right" href="#" title="Responsee - lightweight responsive framework">Design and coding<br> by Team Paradox</a>
            </div>
         </div>
          </div>
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