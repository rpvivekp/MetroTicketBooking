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
							<center><font color="white" size="5"><b>${message}</b></font><center>
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