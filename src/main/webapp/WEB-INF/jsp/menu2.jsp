<%
	String role = (String) request.getSession().getAttribute("role");
	Integer userid = (Integer) request.getSession().getAttribute("userid");

	if(role==null || userid==null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("/logout");  
		rd.forward(request, response);//method may be include or forward  
		return;
	}
%>

<%@page import="com.example.demo.service.UserService"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="navigation">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a href="index.html"><h1><span>Metro Services</span></h1></a>
					</div>
				</div>
				<div class="navbar-collapse collapse">
					<div class="menu">
						<%
							if (role.equals("admin")) {
						%>
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation"><a href="/addroute">Add Route</a></li>
							<li role="presentation"><a href="/viewroutes">ViewRoutes</a></li>
							<li role="presentation"><a href="/addfare">Add Fair</a></li>
							<li role="presentation"><a href="/viewfares">View Fairs</a></li>
							<li role="presentation"><a href="/viewtickets">View Tickets</a></li>
							<li role="presentation"><a href="/viewbalance">Wallet</a></li>
							<li role="presentation"><a href="/logout">Logout</a></li>
						</ul>
						<%
							} else if (role.equals("user")) {
						%>
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation"><a href="/viewroutes">View Routes</a></li>
							<li role="presentation"><a href="/viewtickets">View Tickets</a></li>
							<li role="presentation"><a href="/viewbalance">View Balance</a></li>
							<li role="presentation"><a href="/addbalance">Add Balance</a></li>
							<li role="presentation"><a href="/logout">Logout</a></li>
						</ul>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>