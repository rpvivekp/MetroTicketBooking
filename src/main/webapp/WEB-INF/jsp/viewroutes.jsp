<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="header.jsp"%>
</head>
<body>
	<%@include file="menu2.jsp"%>
	<section id="main-slider" class="no-margin">
		<div class="carousel slide">
			<div class="carousel-inner">
				<div class="item active"
					style="background-image: url(images/slider/bg1.jpg); -webkit-filter: grayscale(50%); filter: grayscale(50%);">
					<div class="container">
						<div class="carousel-content">
							<center><font color="red" size="5"><b>${message}</b></font><center>
							<table align="center" id="customers">
								<tr>
									<td colspan=8 align="center">Routes</td>
								</tr>

								<%
									if (role.equals("admin")) {
								%>
								<tr>
									<th>Route ID</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Add Station</th>
									<th>View Stations</th>
								</tr>
								<c:forEach items="${routes}" var="route">
									<tr>
										<td><c:out value="${route.id}" /></td>
										<td><c:out value="${route.source}" /></td>
										<td><c:out value="${route.destination}" /></td>
										<td><a href="/addstation?routeid=${route.id}">Add Station</a></td>
										<td><a href="/viewstations?routeid=${route.id}">View Stations</a></td>
									</tr>
								</c:forEach>
								<%
									} else if (role.equals("user")) {
								%>
								<tr>
									<th>Route ID</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Book Ticket</th>
								</tr>
								<c:forEach items="${routes}" var="route">
									<tr>
										<td><c:out value="${route.id}" /></td>
										<td><c:out value="${route.source}" /></td>
										<td><c:out value="${route.destination}" /></td>
										<td><a href="/addticket?routeid=${route.id}">Book Ticket</a></td>
									</tr>
								</c:forEach>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#main-slider-->

	<%@include file="footer.jsp"%>

</body>
</html>