<%-- 
    Document   : register
    Created on : Nov 16, 2018, 11:25:45 AM
    Author     : Administrator
--%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login - CT Mart</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="sidebar">
				<a href="" id="logo"><img src="images/logo2.png" alt="LOGO"></a>
				<div id="navigation">
					<ul>
						<li>
							<a href="home.html">Home</a>
						</li>
						<li class="menu selected">
							<a href="login.html">Login</a>
						</li>
						<li>
							<a href="view_1.html">View Products</a>
						</li>
						<li class="last">
							<a href="about.html">About</a>
						</li>
                                                
                                                
                                               
					</ul>
				</div>
			</div>
			<div id="menu-adbox">
				<div class="details">
					<h1>Your Items</h1>
                                        
                                        
				</div>
			</div>
		</div>
                 <%
                    String productId = request.getParameter("productId");
                    String productname = request.getParameter("productName");
                    String SupName = request.getParameter("SupName");
                    double UnitPrice = Double.parseDouble(request.getParameter("UnitPrice"));
                    String CategoryId= request.getParameter("CategoryId");
                 
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO product (ProductId,productname,SupName,UnitPrice,CategoryId) VALUES ('"+productId+"', '"+productname+"', '"+SupName+"', '"+UnitPrice+"', '"+CategoryId+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Product Suceesfully Added...!! <a href='home.html'></a></h4>");
                        }else{
                            out.println("<h4>Error while entering the product</h4>");
                        }
                        
                    } catch (Exception e) {
                        //out.println(e.getMessage());
                    }
                %>
                
		
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