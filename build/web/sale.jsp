<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login - CT Mart</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    
    <p id="demo"></p>
    <script>
        function cal(){
            var a=document.getElementById("price").value;
            var b=document.getElementById("qty").value;
            var c=parseFloat(a)*parseInt(b);
            
            document.getElementById("id").value=c;
        }
        function input(){
            
        }
        
    </script>
    
    
    
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
							<a href="add.jsp">Add Product</a>
						</li>
                                                <li  >
							<a href="dltprocuct.jsp">Delete Product</a>
						</li>
                                                <li>
							<a href="update.html">Update Product</a>
						</li>
                                                 <li class="selected">
							<a href="sale.jsp">Sales Details</a>
						</li>
                                                <li>
							<a href="income2.jsp">Daily Income</a>
						</li>
                                                
						<li class="last">
							<a href="about.html">About</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="menu-adbox">
                            
                            
                            <form action="sale.jsp" method="POST">
                            
				 <table border="0">
                                     
                        <tbody>
                       
                        
                        <tr>
                            <td>Product Id</td>
                            <td><input type="text" name="productId"  value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="productId" hidden="hidden" value= "<%request.getParameter("productId");%>"/>
			</td>
                        </tr>
                        <tr>
                            <td>Product Name</td>
                            <td><input type="text" name="productName" disabled="disable" value= "<% 
                                
                                String prdctId = request.getParameter("productId");
                               // String pdctName=request.getParameter("productName");
                                
                                
                                try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                                Statement stmt = con.createStatement();
                                String query = "SELECT * FROM product WHERE ProductId='"+prdctId+"'";
                                ResultSet rs = stmt.executeQuery(query);
                                if(rs.next()){
                                    String pName=rs.getString("productName");
                                    out.print(pName);
                                    //String uPrice=rs.getString("UnitPrice");
                                    //out.println(uPrice);
                                    
                                }else{
                                    out.println("Enter Correct Product Id");
                                }
                                stmt.close();
                                con.close();

                                } catch (Exception e) {
                                    //out.println(e.getMessage());
                                }
                            %>"
                            />
			</td>
                        </tr>
                        <tr>
                            <td>Unit Price</td>
                            <td ><input id="price" type="text" name="price" disabled="disable" value="<% 
                                
                                String prdctId1 = request.getParameter("productId");
                               // String pdctName=request.getParameter("productName");
                                
                                
                                try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                                Statement stmt = con.createStatement();
                                String query = "SELECT * FROM product WHERE ProductId='"+prdctId1+"'";
                                ResultSet rs = stmt.executeQuery(query);
                                
                                session.setAttribute("uid",request.getParameter("productId"));
                                
                                if(rs.next()){
                                    String uPrice=rs.getString("UnitPrice");
                                    out.println(uPrice);
                                    //String uPrice=rs.getString("UnitPrice");
                                    //out.println(uPrice);
                                    //session.getAttribute("uid");
                                    
                                    
                                    
                                }else{
                                    out.println("Enter Correct Product Id");
                                }
                                stmt.close();
                                con.close();

                                } catch (Exception e) {
                                   // out.println(e.getMessage());
                                }
                                
                            %>"
                            /></td>
                        </tr>
                        
                        <tr>
                            <td>Date</td>
                            <td><input type="date" name="Date" placeholder="MM/DD/YYYY"/> </td>
                        </tr>
                        <tr>
                            <td>Quantity</td>
                            <td> <input id="qty" type="text" name="qty" value="" /></td>
                        </tr>
                        <tr>
                            <td>Total Price</td>
                            <td><input id="id" type="text" name="totPrice"  value=""/></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Clear" /></td>
                            <td><input type="submit" value="Save"/></td>
                                <%
                                
                    String date = request.getParameter("Date");
                    String qty1 = request.getParameter("qty");
                    String id = request.getParameter("productId");
                   // String pId = request.getParameter("session.getAttribute("uid")");
                    // totPrice=Float.parseFloat(request.getParameter("totPrice"));
                    String totPrice=request.getParameter("totPrice");
                    
                   /* out.println(date);
                    out.println(qty1);
                    out.println(totPrice);
                    out.println(id);*/
                    //out.println(session.getAttribute("uid"));
                    //out.println(uPrice);
                    //out.println(session.getAttribute("uid"));
                    
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO sales (Date,qty,TotPrice,ProductId) VALUES ('"+date+"', '"+qty1+"','"+totPrice+"','"+id+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("Insertion success");
                        }else{
                            out.println("Error");
                        }
                        
                    } catch (Exception e) {
                       // out.println(e.getMessage());
                    }
                %>
                        </tr>
                        
                        <!--<tr>
                            <td><input type="button" value="TotalPrice" value="" onclick='cal()'></td>
                        </tr>
                        -->
                        </tbody>
                        </table>
                        </form > 
                        <form action="sale.jsp" method="POST">
                            <tbody>
                            <table>
                                <tr>
                                    <td><input type="button" value="TotalPrice" value="" onclick='cal()'></td>
                                </tr>
                            </tbody>
                            </table>
                        </form>
			</div>
		</div>
		<br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
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