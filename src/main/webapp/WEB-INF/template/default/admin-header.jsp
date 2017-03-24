<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="http://use.fontawesome.com/e859433d96.js"></script>
<!-- Define menu items here -->
<spring:url value="/" var="homeUrl" htmlEscape="true" />
<spring:url value="/login" var="loginUrl" htmlEscape="true" />

<spring:url value="/userManage" var="userManageUrl" htmlEscape="true" />
<spring:url value="/buysell" var="buySellUrl" htmlEscape="true" />
<spring:url value="/getquote" var="quoteUrl" htmlEscape="true" />

<!-- Portfolio -->
<spring:url value="/getStatement" var="getStatementUrl" htmlEscape="true" />
<spring:url value="/watchlist" var="watchlistUrl" htmlEscape="true" />
<spring:url value="/getIndReports" var="IndReportsUrl" htmlEscape="true" />
<spring:url value="/getHshReports" var="HshReportsUrl" htmlEscape="true" />

<!--  Stocks-->
<spring:url value="/getNseData" var="getNseUrl" htmlEscape="true" />
<spring:url value="/getMoneyControlData" var="getMoneyControltUrl" htmlEscape="true" />
<spring:url value="/getYahooFinData" var="getYahooUrl" htmlEscape="true" />

<!--  End of menu items -->

<!--  Start of content -->
<div id="header-wrapper">

	<div id="header" class="container">
		<div id="logo">
			<h1>
				<a href="${homeUrl}">TRADR</a>
			</h1>
			<button id="userbutton"> Admin </button>
		</div>
		
		<div id="menu">
			<ul>
				<li>
				  <div class="dropdown">
					<button class="dropbtn">User Management</button>
					<div class="dropdown-content">
						<a href="change-user.jsp">Set User as Admin</a>
						<a href="delete-user.jsp">Delete User</a>
                                                <a href="stockmaster.jsp">Stock Master</a>
						<a href="#">Link Users to household</a>
					</div>
				  </div>
	            </li>
	            <li><button class="dropbtn" onclick="stock_management.jsp">Stock Management</button></li>
	            <li><button class="dropbtn" onclick="manageFunds.jsp">Manage Funds</button></li>
                    <li><form  action="logout.jsp">
                        <button type="submit" ><i class="fa fa-sign-out fa-large" aria-hidden="true" style="color:white; padding-top:11px; padding-left:11px; font-size:24px; "></i></button>
                    </form></li>
                        </ul>
		
		</div>
	</div>
</div>