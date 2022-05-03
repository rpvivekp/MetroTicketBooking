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
							<center>
								<font color="white" size="5"><b>${message}</b></font>
								<%
									session.removeAttribute("message");
								%>
							</center>
							<table align="center" id="customers">
								<tr>
									<td colspan=8 align="center">View Tickets</td>
								</tr>
								<tr>
									<th>Ticket ID</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Ticket Type</th>
									<th>No of Tickets</th>
									<th>Date of Booking</th>
									<%
										if (role.equals("user")) {
									%>
										<th>Download QRCode</th>
									<%
										}
									%>
									
								</tr>
								<c:forEach items="${tickets}" var="ticket">
									<tr>
										<td><c:out value="${ticket.id}" /></td>
										<td><c:out value="${ticket.source}" /></td>
										<td><c:out value="${ticket.destination}" /></td>
										<td><c:out value="${ticket.type}" /></td>
										<td><c:out value="${ticket.count}" /></td>
										<td><c:out value="${ticket.date}" /></td>
										<%
											if (role.equals("user")) {
										%>
										<td><a href="/downloadqr?ticketid=${ticket.id}">download</a></td>
										<%
											}
										%>
									</tr>
								</c:forEach>
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