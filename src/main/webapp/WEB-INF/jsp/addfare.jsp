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
					style="background-image: url(images/slider/bg1.jpg)">
					<div class="container">
						<div class="carousel-content">
							<div align="center">
								<font color="red" size="5"><b>${message}</b></font>
								<h2 style="color: #ffffff;">Add Fare</h2>
							</div>
							<form action="/savefare" method="post"
								onsubmit="return validate()">
								
								<table align="center" style="font-size: 20px; color: black;">
									<tr>
										<th><br>Select Source</th>
										<th><br> <select name="source" required="required">
												<option value="">--select--</option>
												<c:forEach items="${stations}" var="station">
													<option value="<c:out value="${station.name}"/>"><c:out value="${station.name}"/></option>
												</c:forEach>
										</select></th>
									</tr>
									<tr>
										<th><br>Destination</th>
										<th><br> <select name="destination" required="required">
												<option value="">--select--</option>
												<c:forEach items="${stations}" var="station">
													<option value="<c:out value="${station.name}"/>"><c:out value="${station.name}"/></option>
												</c:forEach>
										</select></th>
									</tr>
									<tr>
										<th><br>Ticket Type?</th>
										<th><br> <select name="type" required="required">
												<option value="">--select--</option>
												<option value="single">Single</option>
												<option value="monthly">Monthly</option>
												<option value="quarterly">Quarterly</option>
										</select></th>
									</tr>
									<tr>
										<th><br>Fare</th>
										<th><br> <input type="number" name="amount" required /></th>
									</tr>
									<tr>
										<th><br> <input type="submit" value="Add" /></th>
										<th><br> <input type="reset" value="Reset" /></th>
									</tr>
								</table>
							</form>
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