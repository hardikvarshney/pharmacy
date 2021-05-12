<%-- 
    Document   : online_store
    Created on : Mar 26, 2020, 9:21:11 PM
    Author     : Hardik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String uname=request.getParameter("uname").toString();%>
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
        <label class="center text-darken-1"><h4>Welcome <%=uname%></h4></label>
        <hr>
        <div class="row">
            <div class="col l2 m4 s12"></div>
            <div class="col l8 m6 s12">
        <table class="responsive-table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Product Name</th>
                    <th>Type</th>
                    <th>Company Name</th>
                    <th>Cost</th>
                    <th>Buy</th>
                </tr>
            </thead>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                String qry="select * from stock";
                Statement stm=conn.createStatement();
                ResultSet rst=stm.executeQuery(qry);
        
                while(rst.next())
                {
            %>
            <tbody>
                <tr>
                    <td><%=rst.getString("id")%></td>
                    <td><%=rst.getString("name")%></td>
                    <td><%=rst.getString("category")%></td>
                    <td><%=rst.getString("company")%></td>
                    <td><%=rst.getString("cost")%></td>
                    <%session.setAttribute("uname",uname);%>
                    <td><a href="buy.jsp?mid=<%=rst.getString("id")%>">Buy</a></td>
                    <%}
                    
                    
                    %>
                    </>
        </table>
                    <div class="col l2 m4 s12"></div>
            </div>
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
