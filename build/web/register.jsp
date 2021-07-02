


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome to Grocery</title>
        <link rel="stylesheet" href="css" type="text/css">
    </head>
    <body>
        
        <div>
            <div>
                
                <h1>Register</h1>
                
                <%
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String nic = request.getParameter("nic");
                    String gender = request.getParameter("gender");
                    String address = request.getParameter("address");
                    String uname = request.getParameter("uname");
                    String pwd = request.getParameter("pwd");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO employee (FNAme,LName,Gender,nic,Address,username,password) VALUES ('"+fname+"', '"+lname+"', '"+gender+"', '"+nic+"', '"+address+"', '"+uname+"', '"+pwd+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Registration Successfull... Now you can login to Grocery Management</h4>");
                        }else{
                            out.println("<h4>Error while registering the user.</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
                
            </div>
        </div>
        
    </body>
</html>
