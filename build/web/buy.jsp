<%-- 
    Document   : buy
    Created on : Mar 26, 2020, 9:41:01 PM
    Author     : Hardik
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String uname=session.getAttribute("uname").toString();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="teal">
        <div class="nav-wrapper container">
            <a class="brand-logo">Pharmacy Management System</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li><a href="index.html">Home</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
              <li><a href="about_us.html">About</a></li>
              <li><a href="contact_us.html">Contact Us</a></li>
            </ul>
        </div>
      <!--For Small Screen(Sidenav)-->
      </nav>
      <ul class="sidenav" id="mobile-demo">
        <li><a href="#">Home</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
        <li><a href="about_us.html">About</a></li>
        <li><a href="contact_us.html">Contact Us</a></li>
      </ul>
        <label class="center"><h3>Welcome <%=uname%></h3></label>
        <label class="center"><h3>Your Cart</h3></label>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from stock where id='"+request.getParameter("mid")+"'";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(sql);
            if(rst.next())
            {%>
                <table class="responsive-table">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Company</th>
                            <th>Amount</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=rst.getString("name")%></td>
                            <td><%=rst.getString("category")%></td>
                            <td><%=rst.getString("company")%></td>
                            <td><form method="post"><input type="number" name="amt" placeholder="Enter Amount">
                                    <input type="submit" name="getamt" value="Confirm" class="btn right" ></form></td>
                            
                            <%
                                if(request.getParameter("getamt")!=null)
                                {
                                    int cost=Integer.parseInt(rst.getString("cost"));
                                    String amt=request.getParameter("amt");
                                    String mid=request.getParameter("mid");
                                    int x=cost*Integer.parseInt(amt);
                                    session.setAttribute("amt",amt);
                                    session.setAttribute("uname",uname);
                                    session.setAttribute("mid",mid);
                                    session.setAttribute("x",x);
                                    response.sendRedirect("order_config.jsp");
                                    
                            %>
                                    
                              <%  }
     
                            %>
                            
                            
                        </tr>
                    </tbody>
                </table>
            <%}
        
        %>
       
       
       
         <!--Footer-->
    <footer class="page-footer teal">
      <div class="container">
        <div class="row">
          <div class="col l6 s12">
            <h5 class="white-text">Footer Content</h5>
            <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
          </div>
          <div class="col l4 offset-l2 s12">
            <h5 class="white-text">Common Links</h5>
            <ul>
              <li><a class="grey-text text-lighten-3" href="index.html">Home</a></li>
              <li><a class="grey-text text-lighten-3" href="about_us.html">About Us</a></li>
              <li><a class="grey-text text-lighten-3" href="gallery.html">Galary</a></li>
              <li><a class="grey-text text-lighten-3" href="contact_us.html">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="footer-copyright">
        <div class="container">
        © 2020 Copyright 
        </div>
      </div>
    </footer>
    </body>
</html>
