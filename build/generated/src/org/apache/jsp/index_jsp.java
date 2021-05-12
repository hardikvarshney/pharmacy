package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <!--Import Google Icon Font-->\n");
      out.write("      <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"materialize/css/materialize.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--Let browser know website is optimized for mobile-->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"teal\">\n");
      out.write("        <div class=\"nav-wrapper container\">\n");
      out.write("            <a class=\"brand-logo\">Pharmacy Management System</a>\n");
      out.write("            <a href=\"#\" data-target=\"mobile-demo\" class=\"sidenav-trigger\"><i class=\"material-icons\">menu</i></a>\n");
      out.write("            <ul class=\"right hide-on-med-and-down\">\n");
      out.write("              <li><a href=\"index.html\">Home</a></li>\n");
      out.write("              <li><a href=\"#\">Services</a></li>\n");
      out.write("              <li><a href=\"gallery.html\" class=\"scrollspy\">Gallery</a></li>\n");
      out.write("              <li><a href=\"about_us.html\">About</a></li>\n");
      out.write("              <li><a href=\"contact_us.html\">Contact Us</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("      <!--For Small Screen(Sidenav)-->\n");
      out.write("      </nav>\n");
      out.write("      <ul class=\"sidenav\" id=\"mobile-demo\">\n");
      out.write("        <li><a href=\"#\">Home</a></li>\n");
      out.write("        <li><a href=\"#\">Services</a></li>\n");
      out.write("        <li><a href=\"gallery.html\" class=\"scrollspy\">Gallery</a></li>\n");
      out.write("        <li><a href=\"about_us.html\">About</a></li>\n");
      out.write("        <li><a href=\"contact_us.html\">Contact Us</a></li>\n");
      out.write("      </ul>\n");
      out.write("        <img src=\"care.jpg\" >\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1 class=\"center-align\">Login As</h1><hr>   \n");
      out.write("        <!--Card @1-->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col s12 m6 l3\">\n");
      out.write("          <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"admin1.png\" class=\"responsive-img\">\n");
      out.write("                <span class=\"card-title\">Administrator</span>\n");
      out.write("                  \n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div class=\"card-action\">\n");
      out.write("              <a href=\"admin.jsp\" class=\"blue-text\">Administrator Login</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>  \n");
      out.write("      <!--Card @2-->\n");
      out.write("        <div class=\"col s12 m6 l3\">\n");
      out.write("          <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"manager.png\" class=\"responsive-img\">\n");
      out.write("                <span class=\"card-title\">Manager</span>\n");
      out.write("                  \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"card-action\">\n");
      out.write("              <a href=\"manager.jsp\" class=\"blue-text\">Click here to Login</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div> \n");
      out.write("        \n");
      out.write("      <!--Card @3-->\n");
      out.write("        <div class=\"col s12 m6 l3\">\n");
      out.write("          <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"cashier.jpg\" class=\"responsive-img\">\n");
      out.write("                <span class=\"card-title\">Cashier</span>\n");
      out.write("                  \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"card-action\">\n");
      out.write("              <a href=\"cashier.jsp\" class=\"blue-text\">Click here to Login</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      <div class=\"col s12 m6 l3\">\n");
      out.write("          <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"pharma.png\" class=\"responsive-img\">\n");
      out.write("                <span class=\"card-title\">Pharmacist</span>                 \n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-action\">\n");
      out.write("              <a href=\"pharma.jsp\" class=\"blue-text\">Click to Login</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>  \n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col s12 m6 l2\"></div>\n");
      out.write("        <div class=\"col s12 m6 l4\">\n");
      out.write("            <div class=\"card hoverable\">\n");
      out.write("                <div class=\"card-image\">\n");
      out.write("                    <img src=\"user.png\" class=\"responsive-img\">\n");
      out.write("                    <span class=\"card-title\">Customer</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-action\">\n");
      out.write("                    <a href=\"user.jsp\" class=\"blue-text\">Click here to Login</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col s12 m6 l4\">\n");
      out.write("          <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"store.jpeg\" class=\"responsive-img\">\n");
      out.write("              <span class=\"card-title\">Online Store</span>   \n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-action\">\n");
      out.write("              <a href=\"online_store.jsp\" class=\"blue-text\">Click here to Visit</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div> \n");
      out.write("        <div class=\"col s12 m6 l2\"></div>\n");
      out.write("     </div>\n");
      out.write("            \n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--Footer-->\n");
      out.write("    <footer class=\"page-footer teal\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col l6 s12\">\n");
      out.write("            <h5 class=\"white-text\">Footer Content</h5>\n");
      out.write("            <p class=\"grey-text text-lighten-4\">You can use rows and columns here to organize your footer content.</p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col l4 offset-l2 s12\">\n");
      out.write("            <h5 class=\"white-text\">Common Links</h5>\n");
      out.write("            <ul>\n");
      out.write("              <li><a class=\"grey-text text-lighten-3\" href=\"index.html\">Home</a></li>\n");
      out.write("              <li><a class=\"grey-text text-lighten-3\" href=\"about_us.html\">About Us</a></li>\n");
      out.write("              <li><a class=\"grey-text text-lighten-3\" href=\"gallery.html\">Galary</a></li>\n");
      out.write("              <li><a class=\"grey-text text-lighten-3\" href=\"contact_us.html\">Contact Us</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"footer-copyright\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("        © 2020 Copyright \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--JavaScript at end of body for optimized loading-->\n");
      out.write("        <script src=\"materialize/js/materialize.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"materialize/js/materialize.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function()\n");
      out.write("            {\n");
      out.write("                $('.sidenav').sidenav();\n");
      out.write("                $('.carousel.carousel-slider').carousel({\n");
      out.write("                indicators:true\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("    </script>\n");
      out.write("    </body>\n");
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
