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
                                                <a href="change-admin.jsp">Set Admin as User</a>
						<a href="delete-user.jsp">Delete User</a>
						<a href="household.jsp">Link Users to household</a>
					</div>
				  </div>
	            </li>
                    <li><form  action="stockmaster.jsp"  ><button type="submit" class="dropbtn">Stock Management</button></form>
                    </li>
                    <li>
                    <div class="dropdown">
					<button class="dropbtn">Manage Funds</button>
					<div class="dropdown-content">
						<a href="manageFunds.jsp">Credit Funds</a>
						<a href="manageFunds.jsp">Debit Funds</a>
					</div>
				  </div>
                    </li>
                    <li><button id="loginbutton" onclick="location.href='/tradr/logout.jsp'">Logout</button></li>
                        </ul>
		
		</div>
	</div>
</div>