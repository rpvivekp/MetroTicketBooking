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
								<h2 style="color: #ffffff;">Add Station</h2>
							</div>
							<form action="/savestation" method="post"
								onsubmit="return validate()">
								
								<input type="hidden" value="${routeid}" name="routeid">
								
								<table align="center" style="font-size: 20px; color: black;">
									<tr>
										<th><br>Station Name</th>
										<th><br> <input type="text" name="name" required /></th>
									</tr>
									<tr>
										<th><br>Is Having Parking?</th>
										<th><br> <select name="isHavingParking" required="required">
												<option value="">--select--</option>
												<option value="yes">Yes</option>
												<option value="no">No</option>
										</select></th>
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