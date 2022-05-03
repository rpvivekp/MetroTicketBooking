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
							<br> <br>
							<center><font color="red" size="5"><b>${message}</b></font><center>
							<h2>
								<center>Update Wallet</center>
							</h2>
							<form action="/savebalance" method="post">
								<table align="center" style="font-size: 20px; color: black;"
									width=40%>
									<tr>
										<th style="color: white;"><br>Enter Credit/Debit
											Card Number</th>
										<th><br> <input type="text" name="cno"
											pattern="[0-9]{16}" required /></th>
									</tr>
									<tr>
										<th style="color: white;"><br>Expiry Month</th>
										<th><br> <input type="number" name="month"
											pattern="[0-9]{2}" min=1 max=12 /></th>
									</tr>
									<tr>
										<th style="color: white;"><br>Expiry Year</th>
										<th><br> <input type="number" name="year" min=2021
											max=2024 /></th>
									</tr>
									<tr>
										<th style="color: white;"><br>CVV</th>
										<th><br> <input type="password" name="cvv" required
											pattern="[0-9]{3}" /></th>
									</tr>
									<tr>
										<th style="color: white;"><br>Enter Amount</th>
										<th><br> <input type="number" name="balance" required /></th>
									</tr>
									<tr>
										<th><input type="submit" value="submit" /></th>
										<th><input type="reset" value="reset" /></th>
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