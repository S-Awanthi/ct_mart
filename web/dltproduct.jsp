<%-- 
    Document   : dltproduct
    Created on : Dec 2, 2018, 3:40:57 PM
    Author     : Hp
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
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
						<li>
							<a href="home.html">Logout</a>						
						</li>
						<li>
							<a href="view.html">View Products</a>
						</li>
                                                <li>
							<a href="add.html">Add Product</a>
						</li>
                                                <li  class="selected">
							<a href="dltprocuct.html">Delete Product</a>
						</li>
                                                <li>
							<a href="update.html">Update Product</a>
						</li>
                                                 <li>
							<a href="sale.jsp">Sales Details</a>
						</li>
                                                <li>
							<a href="income.jsp">Daily Income</a>
						</li>
                                                
						<li class="last">
							<a href="about.html">About</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="menu-adbox">
				<div class="details">
					<h1>your</h1>
                                        
				</div>
			</div>
		</div>
   
        <%
   String pi= request.getParameter("productId");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
Statement st=con.createStatement();
String query ="delete from product where productID='"+pi+"'";
int n=st.executeUpdate(query);
if(n!=0){

out.println("<h3>product deleted succesfully..!!</h3>");
}
else{
out.println(" <h3> Error</h3>");

}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
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
     
               
             
                    
         <!--written by safees-->
</html>
