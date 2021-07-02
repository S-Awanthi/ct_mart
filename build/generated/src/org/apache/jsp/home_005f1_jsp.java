package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>CT Mart</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"page\">\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("\t\t\t<div id=\"sidebar\">\n");
      out.write("\t\t\t\t<a href=\"home.html\" id=\"logo\"><img src=\"images/logo2.png\" alt=\"LOGO\"></a>\n");
      out.write("\t\t\t\t<div id=\"navigation\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"selected\">\t\n");
      out.write("\t\t\t\t\t\t\t<a href=\"home.html\">Home</a> \n");
      out.write("\t\t\t\t\t\t</li> \n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("                                                     ");

                            if(session.getAttribute("username") != null){
                                out.println("<a href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a href='login_1.html'>Login</a>");
                            }
                        
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"view.html\">View Products</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"add.html\">Add Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"dltproduct.html\">Delete Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"update.html\">Update Product</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                 <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"sale.jsp\">Sales Details</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                <li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"income2.jsp\">Daily Income</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<li class=\"last\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"about.html\">About</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div id=\"adbox\">\n");
      out.write("\t\t\t\t<h1>Lorem ipsum dolor sit amet!</h1>\n");
      out.write("\t\t\t\t<div class=\"frame\">\n");
      out.write("\t\t\t\t\t<div class=\"section\">\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales. Nulla facilisi. Nam eget orci enim, eu sodales ligula. <span>+0908 345 5647 | +65 2314</span>\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"section\">\n");
      out.write("\t\t\t\t\t\t<h2>Lorem ipsum dolor sit</h2>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales. Nulla facilisi.\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"contents\">\n");
      out.write("\t\t\t<div id=\"articles\">\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<div class=\"frame\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/sushi9.png\" alt=\"Img\" height=\"213\" width=\"218\">\n");
      out.write("\t\t\t\t\t\t<h2>Lorem ipsum</h2>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\tConsectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus sodales.\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t<a href=\"view.html\" class=\"more\">Learn More</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"frame\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/sushi10.png\" alt=\"Img\" height=\"192\" width=\"189\">\n");
      out.write("\t\t\t\t\t\t<h2>Dolor sit amet</h2>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet nulla ac purus iaculis quis fermentum lacus.\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t<a href=\"view.html\" class=\"more\">Learn More</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div id=\"featured\">\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"home.html\"> <img src=\"images/sushi1.png\" alt=\"Img\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Lorem Ipsum</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"home.html\"> <img src=\"images/sushi2.png\" alt=\"Img\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Dolor sit amet</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"home.html\"> <img src=\"images/sushi3.png\" alt=\"Img\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Nulla Pretium</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"home.html\"> <img src=\"images/sushi4.png\" alt=\"Img\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Curabitur</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div id=\"dummy\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
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
      out.write("</html>\n");
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
