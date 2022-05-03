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
								<font color="red" size="5"><b>${message}</b></font>
							</center>
							<table align="center" id="customers">
								<tr>
									<td colspan=9 align="center">View Ticket</td>
								</tr>
								<tr>
									<th>Source</th>
									<th>Destination</th>
									<th>Ticket Type</th>
									<th>No of Tickets</th>
									<th>Date of Booking</th>
									<th>Fare</th>
									<th>Buy Ticket</th>
									<th>Cancel Ticket</th>
								</tr>
								<tr>
									<td>${ticket.source}</td>
									<td>${ticket.destination}</td>
									<td>${ticket.type}</td>
									<td>${ticket.count}</td>
									<td>${ticket.date}</td>
									<td>${fare}</td>
									<td><a href="/saveticket">buy</a></td>
									<td><a href="/cancelticket">cancel</a></td>
								</tr>
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