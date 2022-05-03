<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="header.jsp"%>
</head>
<body>

	<%@include file="menu1.jsp"%>
	
	<div id="breadcrumb">
		<div class="container">
			<div class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li>Contact</li>
			</div>
		</div>
	</div>

	<div class="map" align="center">
		<h2>
			<br> <br>Have a question or need a customer support?
		</h2>
		<p>Our Customer care provides 24X7 service. Please call on
			040-12345678</p>
	</div>

	<section id="contact-page">
		<div class="container">
			<div class="center">
				<h2>Drop Your Message</h2>
			</div>
			<div class="row contact-wrap">
				<div class="status alert alert-success" style="display: none"></div>
				<form id="main-contact-form" class="contact-form"
					name="contact-form" method="post" action="sendemail.jsp">
					<div class="col-sm-5 col-sm-offset-1">
						<div class="form-group">
							<label>Name *</label> <input type="text" name="name"
								class="form-control" required="required">
						</div>
						<div class="form-group">
							<label>Email *</label> <input type="email" name="email"
								class="form-control" required="required">
						</div>
						<div class="form-group">
							<label>Phone</label> <input type="number" class="form-control">
						</div>
						<div class="form-group">
							<label>Company Name</label> <input type="text"
								class="form-control">
						</div>
					</div>
					<div class="col-sm-5">
						<div class="form-group">
							<label>Subject *</label> <input type="text" name="subject"
								class="form-control" required="required">
						</div>
						<div class="form-group">
							<label>Message *</label>
							<textarea name="message" id="message" required="required"
								class="form-control" rows="8"></textarea>
						</div>
						<div class="form-group">
							<button type="submit" name="submit"
								class="btn btn-primary btn-lg" required="required">Submit
								Message</button>
						</div>
					</div>
				</form>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#contact-page-->

	<%@include file="footer.jsp"%>
	
</body>
</html>