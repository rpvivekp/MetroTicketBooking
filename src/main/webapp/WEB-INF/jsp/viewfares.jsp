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
						<center><font color="red" size="5"><b>${message}</b></font><center>
						<div class="carousel-content">
							<table align="center" id="customers">
								<tr>
									<td colspan=8 align="center">View Fares</td>
								</tr>
								<tr>
									<th>Fare ID</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Fare Type</th>
									<th>Amount</th>
								</tr>
								<c:forEach items="${fares}" var="fare">
									<tr>
										<td><c:out value="${fare.id}" /></td>
										<td><c:out value="${fare.source}" /></td>
										<td><c:out value="${fare.destination}" /></td>
										<td><c:out value="${fare.type}" /></td>
										<td><c:out value="${fare.amount}" /></td>
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