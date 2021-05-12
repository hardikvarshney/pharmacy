<%-- 
    Document   : add_manager
    Created on : Mar 18, 2020, 6:24:39 PM
    Author     : Hardik
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("add_mgr")!=null)
    {
        String username=request.getParameter("cas_name");
        String password=request.getParameter("cas_pass");
        String email=request.getParameter("cas_mail");                               
        String contact=request.getParameter("cas_contact");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String sql="Insert into cashier (username,password,email,contact) values (?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,username);
        pst.setString(2,password);
        pst.setString(3,email);
        pst.setString(4,contact);
        pst.executeUpdate();
        %>
        <script> 
            alert ("Record Added successfuly"); 
            window.open("admin_dash.jsp","_self");   
        </script>
        <%
        
    }


%>
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
        
        <div class="row">
            <div class="col l3 m6 s12"></div>
            <div class="col l6 m6 s12">
                <form action="add_cashier.jsp" method="post">
                    <label><h5> Name</h5></label>
                    <input type="text" name="cas_name" required>
                    <label><h5> Password</h5></label>
                    <input type="text" name="cas_pass" required>
                    <label><h5>E-Mail </h5></label>
                    <input type="text" name="cas_mail" required>
                    <label><h5>Contact No.</h5></label>
                    <input type="text" name="cas_contact" required>
                    <input type="submit" value="Add" name="add_mgr" class="btn-large right">
                </form>
            
            </div>
            <div class="col l3 m6 s12"></div>
        </div>
        
        
        
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

