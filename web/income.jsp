<%-- 
    Document   : income2
    Created on : Dec 1, 2018, 9:42:03 PM
    Author     : SA Com
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Income</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <style>
    #menu-adbox2 {
	background: url(images/of31.png) no-repeat right top;
	height: 120px;
	width: 711px;
	margin: 74px 0 30px;
	padding: 194px 0 16px 249px;
       }
    #menu-adbox2 div.details {
            text-shadow: 1px 1px #fff9eb;

    }
    #menu-adbox2 div.details h1 {
            color: brown;
            display: inline-block;
            font:30px 'NobileBoldItalic';
            margin: 0;
            text-shadow: 1px 1px #fff9eb;
    }

 
	 
        </style>
    <body>
        <div id="page">
		<div id="header">
			<div id="sidebar">
				<a href="index.html" id="logo"><img src="images/logo2.png" alt="LOGO"></a>
				<div id="navigation">
					<ul>
						<li>
							<a href="home.html">Home</a>
						</li>
						<li >
							<a href="home.html">Logout</a>
						</li>
						<li>
							<a href="view.html">View Products</a>
						</li>
                                                <li>
							<a href="add.html">Add Product</a>
						</li>
                                                <li>
							<a href="dltprocuct.html">Delete Product</a>
						</li>
                                                <li>
							<a href="update.html">Update Product</a>
						</li>
                                                 <li>
							<a href="sale.jsp">Sales Details</a>
						</li>
                                                <li class="menu selected">
							<a href="income2.jsp">Daily Income</a>
						</li>
                                                
						<li class="last">
							<a href="about.html">About</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="menu-adbox2">
				<div class="details">
					
        <%
             String date = request.getParameter("myDate");                      
             out.println("<br/><br/><h1>Your total income of the day : </h1>"); 
                    int n=0;
                    float dayIncome=0;
                    float netIncome=0;
             
            try{
            //Load the driver
            Class.forName("com.mysql.jdbc.Driver");
            //create the connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
            //create statement
            Statement stmt = con.createStatement();
            //sql query
            String query = "SELECT TotPrice FROM sales WHERE Date = '"+date+"'";
            //Execute the query
            ResultSet rs = stmt.executeQuery(query);            
                        while(rs.next()){
                             n++;                             
                             float price = rs.getFloat("TotPrice");
                             dayIncome= dayIncome+ price; 
                        }                        
                out.println("<br/><h1> Rs. "+ dayIncome+"</h1>");                 
        }
            catch(Exception e){
            out.println(e.getMessage());
        }
           
      %>    
      
                        </div>     
			</div>
		</div>
		<br/><br/><br/>
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
