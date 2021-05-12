package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class user_005fdash_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    if(session.getAttribute("username")==null)
    {
      out.write("\n");
      out.write("    <script>\n");
      out.write("        alert(\"You must be Logged In!\");\n");
      out.write("        window.open(\"user.jsp\",\"_self\");\n");
      out.write("    </script>\n");
      out.write("    ");
}

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
      out.write("        \n");
      out.write("        <!--SideBar-->\n");
      out.write("<div class=\"row\">\n");
      out.write("  <div class=\"col l3 m3 s12  hide-on-med-and-down\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <img src=\"1.png\" alt=\"\" class=\"responsive-img\">\n");
      out.write("      <div class=\"card-content \">\n");
      out.write("        <span class=\"name flow-text\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("        <br>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from user where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
      out.write("\n");
      out.write("        \n");
      out.write("        <span class=\"email\">");
      out.print(rs.getString("email") );
      out.write("</span>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <ul>\n");
      out.write("        <form>\n");
      out.write("      <blockquote><input type=\"submit\" name=\"view_profile\" value=\"View Profile\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"logout.jsp\">\n");
      out.write("      <blockquote><input type=\"submit\" name=\"logout\" value=\"Logout\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("        </form>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("    <div class=\"col l6 m6 s12\">\n");
      out.write("        <form action=\"uploadServlet\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <label><h5>Query</h5></label>\n");
      out.write("            <input type=\"text\" name=\"ques\" placeholder=\"Enter your Query\" required=\"required\">\n");
      out.write("            <label><h5>Upload File</h5></label>\n");
      out.write("            <input type=\"file\" name=\"photo\">\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"Submit\" name=\"submit\" class=\"btn right\">\n");
      out.write("            \n");
      out.write("            <br><br>\n");
      out.write("        </form>\n");
      out.write("        <hr>\n");
      out.write("       ");
 if(request.getParameter("view_profile")!=null)
       {
      out.write("\n");
      out.write("           <form>\n");
      out.write("               <label class=\"center teal-text\"><h4>Update Form</h4></label>\n");
      out.write("               <label><h5>Your Name</h5></label>\n");
      out.write("               <input type=\"text\" name=\"name\" value=");
      out.print(rs.getString("name"));
      out.write(">\n");
      out.write("               <label><h5>Your Username</h5></label>\n");
      out.write("               <input type=\"text\" name=\"uname\" value=");
      out.print(rs.getString("username"));
      out.write(">\n");
      out.write("               <label><h5>Your Password</h5></label>\n");
      out.write("               <input type=\"text\" name=\"password\" value=");
      out.print(rs.getString("password"));
      out.write(">\n");
      out.write("               <label><h5>Your Contact No.</h5></label>\n");
      out.write("               <input type=\"text\" name=\"contact\" value=");
      out.print(rs.getString("contact"));
      out.write(">\n");
      out.write("               <label><h5>Your E-Mail</h5></label>\n");
      out.write("               <input type=\"text\" name=\"email\" value=");
      out.print(rs.getString("email"));
      out.write(">\n");
      out.write("               <input type=\"submit\" name=\"update\" value=\"Update\" class=\"btn\">\n");
      out.write("           </form>\n");
      out.write("       ");
}
       if(request.getParameter("update")!=null)
       {
           String name=request.getParameter("name");
           String uname=request.getParameter("uname");
           String pass=request.getParameter("password");
           String cont=request.getParameter("contact");
           String mail=request.getParameter("email");
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
           String sqli="update user set name=?, username=?, password=?, contact=?, email=? where username='"+session.getAttribute("username")+"'";
           PreparedStatement pst=conn.prepareStatement(sqli);
                    pst.setString(1,name);
                    pst.setString(2,uname);
                    pst.setString(3,pass);
                    pst.setString(4,cont);
                    pst.setString(5,mail);
                    pst.executeUpdate(); 
      out.write("\n");
      out.write("                    <script>alert(\"Record Updated\")</script>\n");
      out.write("           \n");
      out.write("       ");
}
       
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col l3 m6 s12\">\n");
      out.write("    <div class=\"card hoverable\">\n");
      out.write("            <div class=\"card-image\">\n");
      out.write("              <img src=\"1.png\" class=\"responsive-img\">\n");
      out.write("                <span class=\"card-title\">Online Store</span>\n");
      out.write("                  \n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div class=\"card-action\">\n");
      out.write("                <a href=\"online_store.jsp?uname=");
      out.print(rs.getString("username"));
      out.write("\" class=\"blue-text\">Click Here to Visit</a>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("          <!--Footer-->\n");
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
      out.write("\n");

      String name=rs.getString("username");
      String email=rs.getString("email");
      String contact=rs.getString("contact");
      session.setAttribute("name",name);
      session.setAttribute("email",email);
      session.setAttribute("contact",contact);
      

      out.write('\n');
      out.write('\n');

/*    if(request.getParameter("submit")!=null)
    {
        String name=rs.getString("username");
        String email=rs.getString("email");
        String query=request.getParameter("ques");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String str="insert into prescription values (?,?,?)";
        PreparedStatement pst=conn.prepareStatement(str);
        pst.setString(1,name);
        pst.setString(2,email);
        pst.setString(3,query);
        
        pst.executeUpdate();*/

      out.write("\n");
      out.write("                <!--<script> alert(\"Done\"); </script>-->       \n");
      out.write("    ");
//}



      out.write('\n');
      out.write('\n');
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
