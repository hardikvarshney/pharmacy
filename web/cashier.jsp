<%-- 
    Document   : cashier
    Created on : Mar 16, 2020, 12:39:56 PM
    Author     : Hardik
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Login
    if(request.getParameter("submit")!=null)
    {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String sql="select * from cashier where username=? and password=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,username);
        pst.setString(2,password);
        ResultSet res=pst.executeQuery();
        if(res.next())
        {             
            %>
        <script> 
            alert ("Login Successful");    
        </script>
           <% session.setAttribute("username",username);
              response.sendRedirect("cashier_dash.jsp");
        }
        else
        {
            %>
            <script> 
                alert ("Invalid UserName or Password");
                windows.open("cashier.jsp","_self");            
            </script>
           <%
            
        }
    
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
        
        
        
         <!--Form-->
       <div class="row teal lighten-2">
    <div class="col l3 m3 s12"></div>
    <div class="col l6 m6 s12">
        <div class="card">
            <img src="2.jpg" alt="" class="responsive-img">
            <h2><center>Cashier Login</center></h2>
            <div class="card-content">
                <form action="cashier.jsp" method="post">
                    <label><h5>Username</h5></label>
                    <input type="text" name="username" placeholder="Username" required="required">
                    <label><h5>Password</h5></label>
                    <input type="password" name="password" placeholder="Password" required="required">
                    <br><br>
                    <div class="right">
                        <input type="submit" value="Log In" name="submit" class="btn">
                    </div>
                </form><br><br>
                <p class="center">-----Create New Account-----</p><br>
                <div class="center">
                        <a href="reg_pharma.jsp"><input type="submit" value="Sign In" name="SignIn" class="btn" style="width:30%"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col l3 m3 s12"></div>
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
