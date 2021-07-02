package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class sale_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>Login - CT Mart</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <p id=\"demo\"></p>\n");
      out.write("    <script>\n");
      out.write("        function cal(){\n");
      out.write("            var a=document.getElementById(\"price\").value;\n");
      out.write("            var b=document.getElementById(\"qty\").value;\n");
      out.write("            var c=parseFloat(a)*parseInt(b);\n");
      out.write("            \n");
      out.write("            document.getElementById(\"id\").value=c;\n");
      out.write("        }\n");
      out.write("        function input(){\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\t<div id=\"page\">\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("\t\t\t<div id=\"sidebar\">\n");
      out.write("\t\t\t\t<a href=\"index.html\" id=\"logo\"><img src=\"images/logo2.png\" alt=\"LOGO\"></a>\n");
      out.write("\t\t\t\t<div id=\"navigation\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"home.html\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("                                                   \n");
      out.write("\t\t\t\t\t\t\t<a href=\"home.html\">Logout</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"view.html\">View Products</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"add.jsp\">Add Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li  >\n");
      out.write("\t\t\t\t\t\t\t<a href=\"dltprocuct.jsp\">Delete Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"update.html\">Update Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                 <li class=\"selected\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"sale.jsp\">Sales Details</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"income2.jsp\">Daily Income</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<li class=\"last\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"about.html\">About</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div id=\"menu-adbox\">\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            <form action=\"sale.jsp\" method=\"POST\">\n");
      out.write("                            \n");
      out.write("\t\t\t\t <table border=\"0\">\n");
      out.write("                                     \n");
      out.write("                        <tbody>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td>Product Id</td>\n");
      out.write("                            <td><input type=\"text\" name=\"productId\"  value=\"\" /></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"text\" name=\"productId\" hidden=\"hidden\" value= \"");
request.getParameter("productId");
      out.write("\"/>\n");
      out.write("\t\t\t</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Product Name</td>\n");
      out.write("                            <td><input type=\"text\" name=\"productName\" disabled=\"disable\" value= \"");
 
                                
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
                            
      out.write("\"\n");
      out.write("                            />\n");
      out.write("\t\t\t</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Unit Price</td>\n");
      out.write("                            <td ><input id=\"price\" type=\"text\" name=\"price\" disabled=\"disable\" value=\"");
 
                                
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
                                
                            
      out.write("\"\n");
      out.write("                            /></td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td>Date</td>\n");
      out.write("                            <td><input type=\"date\" name=\"Date\" placeholder=\"MM/DD/YYYY\"/> </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Quantity</td>\n");
      out.write("                            <td> <input id=\"qty\" type=\"text\" name=\"qty\" value=\"\" /></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Total Price</td>\n");
      out.write("                            <td><input id=\"id\" type=\"text\" name=\"totPrice\"  value=\"\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"reset\" value=\"Clear\" /></td>\n");
      out.write("                            <td><input type=\"submit\" value=\"Save\"/></td>\n");
      out.write("                                ");

                                
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
                
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        <!--<tr>\n");
      out.write("                            <td><input type=\"button\" value=\"TotalPrice\" value=\"\" onclick='cal()'></td>\n");
      out.write("                        </tr>\n");
      out.write("                        -->\n");
      out.write("                        </tbody>\n");
      out.write("                        </table>\n");
      out.write("                        </form > \n");
      out.write("                        <form action=\"sale.jsp\" method=\"POST\">\n");
      out.write("                            <tbody>\n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><input type=\"button\" value=\"TotalPrice\" value=\"\" onclick='cal()'></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("\t\t<div id=\"footer\">\n");
      out.write("\t\t\t<div class=\"header\">\n");
      out.write("\t\t\t\t<div class=\"footer\">\n");
      out.write("\t\t\t\t\t<div id=\"connect\">\n");
      out.write("\t\t\t\t\t\t<a href=\"http://CTMart.com/go/facebook/\" target=\"_blank\" class=\"facebook\"></a> <a href=\"http://CTMart.com/go/twitter/\" target=\"_blank\" class=\"twitter\"></a> <a href=\"http://CTMart.com/go/googleplus/\" target=\"_blank\" class=\"googleplus\"></a> <a href=\"http://CTMArt.com/go/vimeo/\" target=\"_blank\" class=\"vimeo\"></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\tCopyright 2018 CT Mart. All Rights Reserved.\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
