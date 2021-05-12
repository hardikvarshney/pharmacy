package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class order_005fconfig_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"materialize/css/materialize.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
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
      out.write("        ");

            String amt=session.getAttribute("amt").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from user where username='"+session.getAttribute("uname")+"'";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(sql);
            if(rst.next())
            {
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col l1 c4 s6\"></div>\n");
      out.write("                <div class=\"col l4 c6 s8\">\n");
      out.write("                    <label class=\"teal-text center\"><h4>Your Address</h4></label>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"order_config.jsp\" method=\"post\">\n");
      out.write("                        <label><h5>Name</h5></label>\n");
      out.write("                        <input type=\"text\" name=\"name\" value=");
      out.print(rst.getString("name"));
      out.write(">\n");
      out.write("                        <label><h5>E-Mail</h5></label>\n");
      out.write("                        <input type=\"text\" name=\"mail\" value=");
      out.print(rst.getString("email"));
      out.write(">\n");
      out.write("                        <label><h5>Contact No.</h5></label>\n");
      out.write("                        <input type=\"text\" name=\"contact\" value=");
      out.print(rst.getString("contact"));
      out.write(">\n");
      out.write("                        <label><h5>Address</h5></label>\n");
      out.write("                        <input type=\"text\" name=\"address\" value=");
      out.print(rst.getString("address"));
      out.write(">\n");
      out.write("                        <input type=\"submit\" name=\"save\" value=\"Done\" class=\"btn right\">\n");
      out.write("                         </form>\n");
      out.write("                </div>\n");
      out.write("                        ");

                                String name=request.getParameter("name");
                                String mail=request.getParameter("mail");
                                String contact=request.getParameter("contact");
                                String address=request.getParameter("address");
                            if(request.getParameter("save")!=null)
                            {
                               
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conni = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                                String qry="update user set name=?, email=?, contact=?, address=? where username='"+session.getAttribute("uname")+"'";
                                PreparedStatement pst=conni.prepareStatement(qry);
                                pst.setString(1,name);
                                pst.setString(2,mail);
                                pst.setString(3,contact);
                                pst.setString(4,address);
                                pst.executeUpdate();
                                response.sendRedirect("order_config.jsp");
                            }
                        
                        
      out.write("\n");
      out.write("                   \n");
      out.write("                    <div class=\"col l1 m4 s6\"></div>\n");
      out.write("                        <div class=\"col l5 s6 s8\">\n");
      out.write("                            <lable class=\"teal-text center\"><h4>Your Order</h4></lable>\n");
      out.write("                            <hr>\n");
      out.write("                            <table class=\"responsive-table\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Product Name</th>\n");
      out.write("                                                <th>Category</th>\n");
      out.write("                                                <th>Company</th>\n");
      out.write("                                                <th>Amount</th>\n");
      out.write("                                                <th>Cost</th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                            ");

                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                                String sql1="select * from stock where id='"+session.getAttribute("mid")+"'";
                                Statement stmt=con.createStatement();
                                ResultSet rs=stmt.executeQuery(sql1);
                                if(rs.next())
                                {
      out.write("\n");
      out.write("                                    \n");
      out.write("                                        <tbody>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("category"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("company"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(session.getAttribute("amt"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(session.getAttribute("x"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                        <br>\n");
      out.write("                                        <form action=\"order_config.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"order\" value=\"Place Order\" class=\"btn right\">\n");
      out.write("                                        </form>\n");
      out.write("                            </div>   \n");
      out.write("                                   ");
if(request.getParameter("order")!=null)
                                   {
                                    String uname=rst.getString("name");
                                    String umail=rst.getString("email");
                                    String ucontact=rst.getString("contact");
                                    String uaddress=rst.getString("address");
                                    String mname=rs.getString("name");
                                    String mcategory=rs.getString("category");
                                    String mcompany=rs.getString("company");
                                    String mamt=session.getAttribute("amt").toString();
                                    String mx=session.getAttribute("x").toString();
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cont = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                                    String sql2="Insert into online_order (uname,umail,ucontact,uaddress,mname,mcategory,mcompany,mamt,mcost) values (?,?,?,?,?,?,?,?,?)";
                                    PreparedStatement pst=cont.prepareStatement(sql2);
                                    pst.setString(1,uname);
                                    pst.setString(2,umail);
                                    pst.setString(3,ucontact);
                                    pst.setString(4,uaddress);
                                    pst.setString(5,mname);
                                    pst.setString(6,mcategory);
                                    pst.setString(7,mcompany);
                                    pst.setString(8,mamt);
                                    pst.setString(9,mx);
                                    pst.executeUpdate();
                                               }
      out.write("<script>alert(\"OrderPlaced\");</script>\n");
      out.write("                                    \n");
      out.write("                                ");
}
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                           \n");
      out.write("                <div class=\"col l1 c4 s6\"></div>\n");
      out.write("            </div>\n");
      out.write("            ");
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      <!--Footer-->\n");
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
