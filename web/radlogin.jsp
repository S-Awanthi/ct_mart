


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>WELCOME CT MART</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
       
        
        <div id="contents">
            <div id="adbox">
                <%
                    
                    
                    try {
                        
                        String un = request.getParameter("username");
                        String pwd = request.getParameter("password");
                    
                    
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "SELECT * FROM employee WHERE username='"+un+"' AND password='"+pwd+"'";
                        ResultSet rs = stmt.executeQuery(query);
                        if(rs.next()){
                            //String fname = rs.getString("FName");
                            session.setAttribute("username", rs.getString("username"));
                            //response.sendRedirect("home_1.html");
                            //out.println("<h4>Login Success</h4>");
                            response.sendRedirect("home_1.jsp");
                           
                            
                        }
                        else{
                            response.sendRedirect("login_1.html");
                            //response.sendRedirect("invalid.html");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
                
            </div>
        </div>
        <div id="footer">
            <div>
                <p>
                   
                </p>
            </div>
        </div>
    </body>
</html>
