<%-- 
    Document   : order_config
    Created on : Mar 27, 2020, 7:33:28 PM
    Author     : Hardik
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




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
        <%
            String amt=session.getAttribute("amt").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from user where username='"+session.getAttribute("uname")+"'";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(sql);
            if(rst.next())
            {%>
            <div class="row">
                <div class="col l1 c4 s6"></div>
                <div class="col l4 c6 s8">
                    <label class="teal-text center"><h4>Your Address</h4></label>
                    <hr>
                    <form action="order_config.jsp" method="post">
                        <label><h5>Name</h5></label>
                        <input type="text" name="name" value=<%=rst.getString("name")%>>
                        <label><h5>E-Mail</h5></label>
                        <input type="text" name="mail" value=<%=rst.getString("email")%>>
                        <label><h5>Contact No.</h5></label>
                        <input type="text" name="contact" value=<%=rst.getString("contact")%>>
                        <label><h5>Address</h5></label>
                        <input type="text" name="address" value=<%=rst.getString("address")%>>
                        <input type="submit" name="save" value="Done" class="btn right">
                         </form>
                </div>
                        <%
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
            }
                        %>
                   
                    <div class="col l1 m4 s6"></div>
                        <div class="col l5 s6 s8">
                            <lable class="teal-text center"><h4>Your Order</h4></lable>
                            <hr>
                            <table class="responsive-table">
                                        <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Category</th>
                                                <th>Company</th>
                                                <th>Amount</th>
                                                <th>Cost</th>
                                            </tr>
                                        </thead>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                                String sql1="select * from stock where id='"+session.getAttribute("mid")+"'";
                                Statement stmt=con.createStatement();
                                ResultSet rs=stmt.executeQuery(sql1);
                                if(rs.next())
                                {%>
                                    
                                        <tbody>
                                            <tr>
                                                <td><%=rs.getString("name")%></td>
                                                <td><%=rs.getString("category")%></td>
                                                <td><%=rs.getString("company")%></td>
                                                <td><%=session.getAttribute("amt")%></td>
                                                <td><%=session.getAttribute("x")%></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                        <br>
                                        <form action="order_config.jsp">
                            <input type="submit" name="order" value="Place Order" class="btn right">
                                        </form>
                            </div>   
                                   <%if(request.getParameter("order")!=null)
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
                                               %>
                                        <script> alert ("Order Placed"); </script>
        
                                    
                                <%
                                   session.setAttribute("mamt",mamt);
                                   session.setAttribute("mname",mname);
                                   session.setAttribute("mcategory",mcategory);
                                   response.sendRedirect("calc_online.jsp");
                                   }
                                } %>
                            
                           
                <div class="col l1 c4 s6"></div>
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
