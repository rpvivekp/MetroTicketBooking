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
							<br> <br>
							<center><font color="red" size="5"><b>${message}</b></font><center>
							<h2>
								<center>Add Route</center>
							</h2>
							<form action="/saveroute" method="post">
								<table align="center" style="font-size: 20px; color: black;">
									<tr>
										<th><br>Source</th>
										<th><br> <input type="text" name="source" required /></th>
									</tr>
									<tr>
										<th><br>Destination</th>
										<th><br> <input type="text" name="destination" required /></th>
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
	<%@include file="footer.jsp"%>
</body>
</html>