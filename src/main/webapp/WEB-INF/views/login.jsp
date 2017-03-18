<style>
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>




<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Tradr - Trading Platform</title>
	<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="css/default.css" rel="stylesheet" />
<link href="css/fonts.css" rel="stylesheet" />
</head>
<body>
	<div class="page">
	<div>
		

<!-- Define menu items here -->







<!-- Portfolio -->





<!--  Stocks-->




<!--  End of menu items -->

<!--  Start of content -->
<div id="header-wrapper">

	<div id="header" class="container">
		<div id="logo">
			<h1>
				<a href="/tradr/">TRADR</a>
			</h1>
			<button id="userbutton"> Guest </button>
		</div>
		
		<div id="menu">
			<ul>
				<li>
					<div class="dropdown">
						<button class="dropbtn">Trade</button>
						<div class="dropdown-content">
							<a href="/tradr/buysell">Buy/Sell</a>

							<a href="/tradr/getquote">Get Quote</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="dropbtn">Stocks</button>
						<div class="dropdown-content">
							<a href="/tradr/getNseData">NSE</a>
							<a href="/tradr/getMoneyControlData">MoneyControl</a>
							<a href="/tradr/getYahooFinData">Yahoo Finance</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="dropbtn">PortFolio</button>
						<div class="dropdown-content">
							<a href="/tradr/getStatement">Statement</a>
							<a href="/tradr/watchlist">WatchList</a>
							<a href="/tradr/getIndReports">Industry Reports</a>
							<a href="/tradr/getHshReports">HouseHold Reports</a>
						</div>
					</div>
				</li>
				<button id="loginbutton" onclick="location.href='/tradr/login'">Login/Register</button>
				
				
			</ul>
			
		</div>
	
	</div>
</div>
		</div>
		<div class="maintype">
			<div>
<h3>Login Page</h3>
		
		<body>
                    <form align="center" action="login-new.jsp" method="post">
                        <label>
                            User Name:</label><input type="text" name="uname" size="20"><br><br>
                            <label>
                Password:</label><input type="password" name="pass" size="20"><br><br>
           
                <input type="submit" class="button" name="submit" value="Login" >
                <input type="button" class="button" name="register" value="Register"><br>
                <input type="button" class="button" onclick="location.href='./fpass.jsp';" value="Forgot Password" />
        </form>
    </body> 

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
		<div id="footerblock">
	<p>&copy; Tradr. All rights reserved.</p>
</div>
	</div>
</body>
</html>