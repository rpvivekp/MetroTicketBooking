<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="header.jsp"%>
</head>
<body>

	<%@include file="menu1.jsp"%>

	<section id="main-slider" class="no-margin">
		<div class="carousel slide">
			<div class="carousel-inner">
				<div class="item active"
					style="background-image: url(images/slider/bg1.jpg)">
					<div class="container">
						<div class="carousel-content">
							<center><font color="red" size="5"><b>${message}</b></font><center>
							<br> <br>
							<h2>
								<center>Login Here</center>
							</h2>
							<form action="/loginaction" method="get">
								<table align="center" style="font-size: 20px; color: black;">
									<tr>
										<th><br>UserName</th>
										<th><br> <input type="text" name="username" required /></th>
									</tr>
									<tr>
										<th><br>Password</th>
										<th><br> <input type="password" name="password" required /></th>
									</tr>
									<tr>
										<th><br> <input type="submit" value="Submit" /></th>
										<th><br> <input type="reset" value="Reset" /></th>
									</tr>
									<tr>
										<th colspan=2><br> <br> <a href="/register">Click
												Here , To Sign Up .....! </a></th>
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