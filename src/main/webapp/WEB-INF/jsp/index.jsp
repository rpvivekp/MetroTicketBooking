<!DOCTYPE HTML>
<html>
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
						<div class="row slide-margin">
							<div class="col-sm-6">
								<div class="carousel-content">
									<h2 class="animation animated-item-1">
										Welcome to <span> Metro Services</span>
									</h2>
									<p class="animation animated-item-2"></p>
									<a class="btn-slide animation animated-item-3" href="#">My
										City,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Metro</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/.item-->
			</div>
			<!--/.carousel-inner-->
		</div>
		<!--/.carousel-->
	</section>
	<!--/#main-slider-->

	<div class="feature">
		<div class="container">
			<div class="text-center">
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<i class="fa fa-book"></i>
						<h2>Book Tickets</h2>
						<p>Tickets can be booked here.Payment can be done by adding
							money in the wallet or with debit/credit cards.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<i class="fa fa-laptop"></i>
						<h2>Details</h2>
						<p>Information about trains and list of trains are known here.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="900ms">
						<i class="fa fa-heart-o"></i>
						<h2>QR CODE</h2>
						<p>It generates QR code when the token is lost.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="1200ms">
						<i class="fa fa-cloud"></i>
						<h2>Parking</h2>
						<p>Parking slots are booked here with respect to passengers.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about">
		<div class="container">
			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="300ms">
				<h2>About us</h2>
				<img src="images/6.jpg" class="img-responsive" />
				<p>Our Research has shown that there are many websites available
					to get the information about the trains and through those websites
					we can book the tickets. But they dont give complete information
					about the metro train ticket details like combo packs, parking
					details and time scheduling of trains.</p>
			</div>

			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="600ms">
				<h2>Booking and Parking at one place</h2>
				<p>This is an integrated web application which gives complete
					information about the trains, ticket informations and parking
					details.</p>
				<p>To travel to the metro station people who are far away use
					other means of transportation ,which makes difficulty for them to
					travel.To overcome this,a combo pack is designed in which it
					contains ticket and cab/auto booking.</p>
				<p>Parking facility is provided by the government but there is
					no security to our vehicles and no correct order in parking our
					vehicles.To overcome this,passengers can book parking slot before
					itself with their convenience.</p>
			</div>
		</div>
	</div>

	<div class="lates">
		<div class="container">
			<div class="text-center">
				<h2>Latest News</h2>
			</div>
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="300ms">
				<img src="images/4.jpg" class="img-responsive" />
				<h3>Booking</h3>
				<p style="text-align: justify;">Passengers can get the tickets
					online.This system does not require more manual power.This
					generates the tickets based on the train travelling kilometers.
					Payment can be done adding money in the wallet or with debit/credit
					cards. It also allows to book the ticket for auto or cab along with
					the metro train.So it is easy for travelling and can also maintain
					the time.</p>
			</div>

			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="600ms">
				<img src="images/4.jpg" class="img-responsive" />
				<h3>Time Maintainence</h3>
				<p style="text-align: justify;">The major amount of work for
					management system in train is to maintain the time for user
					purposes. The time is maintained based on the kilometers and speed
					dependent time complexity in terms of the number of features in
					maintaining in train.</p>
			</div>

			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="900ms">
				<img src="images/4.jpg" class="img-responsive" />
				<h3>Notifications</h3>
				<p style="text-align: justify;">User will get the notification
					on details of the train timings and what all trains are available
					at what time.Whenever a ticket is booked user will the confirmation
					message to his mail.</p>
			</div>
		</div>
	</div>
	
	<section id="conatcat-info">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<div class="media contact-info wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="pull-left">
							<i class="fa fa-phone"></i>
						</div>
						<div class="media-body">
							<h2>Have a question or need a customer quote?</h2>
							<p>Our Customer care provides 24X7 service. Please call on
								040-12345678</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.container-->
	</section>
	
	<!--/#conatcat-info-->
	<%@include file="footer.jsp"%>
</body>
</html>
