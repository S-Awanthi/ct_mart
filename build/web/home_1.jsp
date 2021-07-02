<%-- 
    Document   : home_1.jsp
    Created on : Dec 3, 2018, 10:01:10 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CT Mart</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="sidebar">
				<a href="home.html" id="logo"><img src="images/logo2.png" alt="LOGO"></a>
				<div id="navigation">
					<ul>
						<li class="selected">	
							<a href="home.html">Home</a> 
						</li> 
						<li>
                                                     <%
                            if(session.getAttribute("username") != null){
                                out.println("<a href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a href='login_1.html'>Login</a>");
                            }
                        %>
													
						</li>
						<li>
							<a href="view.html">View Products</a>
						</li>
                                                <li>
							<a href="add.html">Add Product</a>
						</li>
                                                <li>
							<a href="dltproduct.html">Delete Product</a>
						</li>
                                                <li>
							<a href="update.html">Update Product</a>
						</li>
                                                 <li>
							<a href="sale.jsp">Sales Details</a>
						</li>
                                                <li>
							<a href="income2.jsp">Daily Income</a>
						</li>
                                                
						<li class="last">
							<a href="about.html">About</a>
						</li>

				</div>
			</div>
			<div id="adbox">
				<h1>Lorem ipsum dolor sit amet!</h1>
				<div class="frame">
					<div class="section">
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales. Nulla facilisi. Nam eget orci enim, eu sodales ligula. <span>+0908 345 5647 | +65 2314</span>
						</p>
					</div>
					<div class="section">
						<h2>Lorem ipsum dolor sit</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales. Nulla facilisi.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="contents">
			<div id="articles">
				<div>
					<div class="frame">
						<img src="images/sushi9.png" alt="Img" height="213" width="218">
						<h2>Lorem ipsum</h2>
						<p>
							Consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales.
						</p>
						<a href="view.html" class="more">Learn More</a>
					</div>
					<div class="frame">
						<img src="images/sushi10.png" alt="Img" height="192" width="189">
						<h2>Dolor sit amet</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus.
						</p>
						<a href="view.html" class="more">Learn More</a>
					</div>
					<div id="featured">
						<ul>
							<li>
								<a href="home.html"> <img src="images/sushi1.png" alt="Img">
								<h3>Lorem Ipsum</h3>
								</a>
							</li>
							<li>
								<a href="home.html"> <img src="images/sushi2.png" alt="Img">
								<h3>Dolor sit amet</h3>
								</a>
							</li>
							<li>
								<a href="home.html"> <img src="images/sushi3.png" alt="Img">
								<h3>Nulla Pretium</h3>
								</a>
							</li>
							<li>
								<a href="home.html"> <img src="images/sushi4.png" alt="Img">
								<h3>Curabitur</h3>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="dummy">
			</div>
		</div>
		<div id="footer">
			<div class="header">
				<div class="footer">
					<div id="connect">
						<a href="http://CTMart.com/go/facebook/" target="_blank" class="facebook"></a> <a href="http://CTMart.com/go/twitter/" target="_blank" class="twitter"></a> <a href="http://CTMart.com/go/googleplus/" target="_blank" class="googleplus"></a> <a href="http://CTMArt.com/go/vimeo/" target="_blank" class="vimeo"></a>
					</div>
					<p>
						Copyright 2018 CT Mart. All Rights Reserved.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
