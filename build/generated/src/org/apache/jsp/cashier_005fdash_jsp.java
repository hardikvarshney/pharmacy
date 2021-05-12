package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class cashier_005fdash_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    if(session.getAttribute("username")==null)
    {
      out.write("\n");
      out.write("    <script>\n");
      out.write("            alert(\"You are not Loged In\");\n");
      out.write("            window.open(\"cashier.jsp\",\"_self\");\n");
      out.write("            \n");
      out.write("    </script>\n");
      out.write("    ");
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"materialize/css/materialize.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
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
            String sql="select * from cashier where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
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
      out.write("      <blockquote><input type=\"submit\" name=\"view_profile\" value=\"View Profile\"class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("      <blockquote><input type=\"submit\" name=\"view_order\" value=\"View Order\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>   \n");
      out.write("      <blockquote><input type=\"submit\" name=\"sell_med\" value=\"Sell Medicine\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("      <blockquote><input type=\"submit\" name=\"view_sale\" value=\"View Sale\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"logout.jsp\">\n");
      out.write("      <blockquote><input type=\"submit\" name=\"logout\" value=\"Logout\" class=\"btn-flat\"><li></li><i class=\"material-icons\"></i></a></blockquote>\n");
      out.write("    </form>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("     <div class=\"col l6 m6 s12\">\n");
      out.write("         \n");
      out.write("         \n");
      out.write("            \n");
      out.write("          ");
  if(request.getParameter("view_profile")!=null)
            {
                
            
      out.write("\n");
      out.write("                <form action=\"cashier_dash.jsp\">\n");
      out.write("                    <label><h5>Your Username</h5></label>\n");
      out.write("                    <input type=\"text\" name=\"uname\" value=");
      out.print(rs.getString("username"));
      out.write(">\n");
      out.write("                    <label><h5>Your Password</h5></label>\n");
      out.write("                    <input type=\"text\" name=\"password\" value=");
      out.print(rs.getString("password"));
      out.write(">\n");
      out.write("                    <label><h5>Your Contact No.</h5></label>\n");
      out.write("                    <input type=\"text\" name=\"contact\" value=");
      out.print(rs.getString("contact"));
      out.write(">\n");
      out.write("                    <label><h5>Your E-Mail</h5></label>\n");
      out.write("                    <input type=\"text\" name=\"mail\" value=");
      out.print(rs.getString("email"));
      out.write(">\n");
      out.write("                    <input type=\"submit\" name=\"update\" value=\"Update\" class=\"btn right\">\n");
      out.write("                </form>\n");
      out.write("                    ");
 }
             
                   if(request.getParameter("update")!=null) 
                   {
                    //String uname=request.getParameter("uname");
                    String pass=request.getParameter("password");
                    String cont=request.getParameter("contact");
                    String mail=request.getParameter("mail");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                    String qry="Update cashier set password=?, contact=? where username='"+session.getAttribute("username")+"'";
                    PreparedStatement pst=conn.prepareStatement(qry);
                    //pst.setString(1,uname);
                    pst.setString(1,pass);
                    pst.setString(2,cont);
                    //pst.setString(4,mail);
                    pst.executeUpdate(); 
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Record Updated\");\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("                    \n");
      out.write("                       \n");
      out.write("                   ");
}
                        
                       
            
            
           
            if(request.getParameter("sell_med")!=null)
        {
      out.write("\n");
      out.write("        <form action=\"cashier_dash.jsp\" method=\"post\">\n");
      out.write("             <label><h5>Customer Name</h5></label>\n");
      out.write("             <input type=\"text\" name=\"cust_name\" placeholder=\"Customer Name\" required=\"required\">\n");
      out.write("             <label><h5>Medicine Name</h5></label>\n");
      out.write("             <input type=\"text\" name=\"med_name\" placeholder=\"Medicine Name\" required=\"required\">\n");
      out.write("             <label><h5>Medicine Type</h5></label>\n");
      out.write("             <input type=\"text\" name=\"med_type\" placeholder=\"\" required=\"required\">            \n");
      out.write("             <label><h5>Amount</h5></label>\n");
      out.write("             <input type=\"number\" name=\"amount\" placeholder=\"Amount\" required=\"required\">\n");
      out.write("             <input type=\"submit\" value=\"Save\" name=\"save\" class=\"btn \">\n");
      out.write("        </form>\n");
      out.write("        <form action=\"getbill\" method=\"post\">\n");
      out.write("             <input type=\"submit\" value=\"Generate Reciept\" name=\"submit\" class=\"btn right\">\n");
      out.write("        </form>\n");
      out.write("         \n");
      out.write("            ");
}
            
        
        if(request.getParameter("save")!=null)
        {
        String cname=request.getParameter("cust_name");
        String mname=request.getParameter("med_name");
        String mtype=request.getParameter("med_type");
        int amt=Integer.parseInt(request.getParameter("amount"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="Insert into sale (cus_name, med_name, med_type, amount) values (?,?,?,?)";
        PreparedStatement pst=conn.prepareStatement(qry);
        pst.setString(1,cname);
        pst.setString(2,mname);
        pst.setString(3,mtype);
        pst.setInt(4,amt);       
        pst.executeUpdate(); 
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Record Added Successfully\");\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    ");

        session.setAttribute("amt",amt);
        session.setAttribute("mname",mname);
        session.setAttribute("mtype",mtype);
        response.sendRedirect("calc.jsp");
        }
         if(request.getParameter("view_sale")!=null)
    {
      out.write("\n");
      out.write("        <table class=\"responsive-table\">\n");
      out.write("             <thead>\n");
      out.write("                 <tr>\n");
      out.write("                     <th>Id</th>\n");
      out.write("                     <th>Customer Name</th>\n");
      out.write("                     <th>Medicine Name</th>\n");
      out.write("                     <th>Medicine Type</th>\n");
      out.write("                     <th>Amount sold</th>\n");
      out.write("                     \n");
      out.write("                 </tr>\n");
      out.write("             </thead>\n");
      out.write("        ");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="select * from sale";
        Statement stm=conn.createStatement();
        ResultSet rst=stm.executeQuery(qry);
        
        while(rst.next())
        {
            
            //String id=rs.getString("id");
        
        
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>");
      out.print(rst.getString("id") );
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rst.getString("cus_name") );
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rst.getString("med_name") );
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rst.getString("med_type") );
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rst.getString("amount") );
      out.write("</td>\n");
      out.write("                 </tr>\n");
      out.write("            </tbody>\n");
      out.write("            \n");
      out.write("            ");

            }
        
      out.write("\n");
      out.write("    </table>\n");
      out.write("   ");
 }
     
      out.write("    \n");
      out.write("         \n");
      out.write("         \n");
      out.write("         \n");
      out.write("         \n");
      out.write("     </div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("</div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
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
