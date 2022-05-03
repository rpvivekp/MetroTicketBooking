<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="header.jsp"%>

<script>
	function validate() {
		var idp = document.getElementById("idp").value;
		var refi = document.getElementById("refi").value;
		if (idp == "AadharNumber") {
			if (refi.length != 12) {
				alert("Please Enter correct Aadhar Number");
				return false;
			}
			if (isNaN(refi)) {
				alert("Please enter digits only");
				return false;
			}
		} else if (idp == "PANNumber") {
			if (refi.length != 10) {
				alert("Please Enter correct PAN Number");
				return false;
			}
		} else if (idp == "VoterID") {
			if (refi.length != 10) {
				alert("Please Enter correct Voter ID Number");
				return false;
			}
		}
	}
</script>

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
							<h2 style="color: #ffffff;">
								<center>User Sign Up</center>
							</h2>
							<form action="/regaction" method="post"
								onsubmit="return validate()">
								
								<input type="hidden" value="user" name="role">
								<input type="hidden" value="0" name="balance">
								
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
										<th><br>EmailID</th>
										<th><br> <input type="email" name="email" required /></th>
									</tr>
									<tr>
										<th><br>Mobile No</th>
										<th><br> <input type="number" name="mobile"
											pattern="[0-9]{10}" required /></th>
									</tr>
									<tr>
										<th><br>Address</th>
										<th><br> <textarea name="address"
											required></textarea></th>
									</tr>
									<tr>
										<th><br>ID Proof</th>
										<th><br> <select name="prooftype" id="idp" required="required">
												<option value="">--select--</option>
												<option value="AadharNumber">Aadhar Number
												<option value="PanNumber">PAN Number
												<option value="VoterID">Voter ID
										</select></th>
									</tr>
									<tr>
										<th><br>Reference No</th>
										<th><br> <input type="text" name="proofrefno" required
											id="refi" /></th>
									</tr>
									<tr>
										<th><br> <input type="submit" value="Submit" /></th>
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