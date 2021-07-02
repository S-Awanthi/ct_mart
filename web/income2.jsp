<%-- 
    Document   : income2
    Created on : Dec 1, 2018, 9:42:03 PM
    Author     : SA Com
--%>

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
                color: #fa8f0d;
                display: inline-block;
                font: 35px/36px 'NobileBoldItalic';
                margin: 0;
                text-shadow: 1px 1px #fff9eb;
        }
        #menu-adbox2 div.details p {
                color: black;
                font-size: 14px;
                font-weight: bold;
                line-height: 24px;
                width: 310px;
                margin: 0;
        }
        input[type="text"]{
		border-top: 1px solid #ffffff;
		height:30px;
		font-size:16px;
		width:350px;
	  }
	#btton3{
		background-color:#ff9933;
		margin-left:250px;
                padding:7px;
                font-size:18px; 
                border-radius:7px;
                width: 100px;
                font:20px 'NobileBoldItalic';
        }
	  
	#btton3:hover{
                background:#333333;
		color:white;
        }
        
        input[type="date"]{
		border-top: 1px solid #ffffff;
		height:30px;
		font-size:16px;
		width:350px;
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
							<a href="login.html">Login</a>
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
					<h1>Daily Income</h1><br/><br/>
                                            <form name="formIn" action="income.jsp" method="POST">
                                                    <table border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>Date  : </td>
                                                                <td><input type="date" id="myDate" name="myDate" placeholder="yyyy /mm /dd"></td>                                                                
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td><button id="btton3" onclick="myFunction()">Check </button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                <br/><br/><br/>
                                                </form>		
				</div>
                            
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
    <script>
        function myFunction(){
                var x = document.getElementById("myDate").value;
        }
        function myFunction2(){
                var y = document.getElementById("").value;
        }
        
    </script>
        
        
        
    </body>
</html>
