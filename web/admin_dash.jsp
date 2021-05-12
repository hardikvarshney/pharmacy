<%-- 
    Document   : admin_dash
    Created on : Mar 18, 2020, 5:45:02 PM
    Author     : Hardik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("username")==null)
    {%>
    <script>
            alert("You are not Loged In");
            window.open("admin.jsp","_self");
            
    </script>
    <%}
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
        
        <!--SideBar-->
<div class="row">
  <div class="col l3 m3 s12  hide-on-med-and-down">
    <div class="card">
      <img src="admin1.png" alt="" class="responsive-img">
      <div class="card-content ">
        <span class="name flow-text">${username}</span>
        <br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from admin where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {%>
        
        <span class="email"><%=rs.getString("email") %></span>
        <% } %>
      </div>
    </div>
    <ul>
        <form>
      <blockquote><input type="submit" name="view_profile" value="View Profile" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="delete_manager" value="Manager" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="delete_cashier" value="Cahier" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="delete_pharmacist" value="Pharmacist" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
        <form action="logout.jsp">
      <blockquote><input type="submit" name="logout" value="Logout" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
    </form>
    </ul>
  </div>
     <div class="col l9 m6 s12">
         <%
            if(request.getParameter("delete_manager")!=null)
    {%>
    <form action="add_manager.jsp" >
    <input type="submit" name="add_manager" value="Add Manager" class="btn" style="margin-top:10px">
    </form>
    <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Name</th>
                     <th>E-Mail</th>
                     <th>Contact No.</th>
                     
                     <th>Delete</th>
                     
                 </tr>
             </thead>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="select * from manager";
        Statement stm=conn.createStatement();
        ResultSet rst=stm.executeQuery(qry);
        
        while(rst.next())
        {
            
            //String id=rs.getString("id");
        
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("username") %></td>
                     <td><%=rst.getString("email") %></td>
                     <td><%=rst.getString("contact") %></td>
                     
                     <td><a href="delete_manager.jsp?mid=<%=rst.getString("id")%>" class="btn-floating">Delete</td> 
                     
                 </tr>
            </tbody>
            
            <%
            }
        %>
    </table>
    <%}
    

    else if(request.getParameter("delete_cashier")!=null)
    {%> 
     <form action="add_cashier.jsp" >
    <input type="submit" name="add_cashier" value="Add Cashier" class="btn" style="margin-top:10px">
    </form>
        <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Name</th>
                     <th>E-Mail</th>
                     <th>Contact</th>
                     
                     <th>Delete</th>
                 </tr>
             </thead>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String qry="select * from cashier";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(qry);
            while(rst.next())
            {
            
                
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("username") %></td>
                     <td><%=rst.getString("email") %></td>
                     <td><%=rst.getString("contact") %></td>
                     
                     <td><a href="delete_cashier.jsp?mid=<%=rst.getString("id")%>" class="btn-floating">Delete</td> 
                     
                 </tr>
            </tbody>
              <%
            }
        %>
    </table>
              
    <%}
            else if(request.getParameter("delete_pharmacist")!=null)
    {%> 
     <form action="reg_pharma.jsp" >
    <input type="submit" name="add_pharmacist" value="Add Pharmacist" class="btn" style="margin-top:10px">
    </form>
        <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Name</th>
                     <th>E-Mail</th>
                     <th>Contact</th>
                     
                     <th>Delete</th>
                 </tr>
             </thead>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String qry="select * from pharmacist";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(qry);
            while(rst.next())
            {
            
                
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("username") %></td>
                     <td><%=rst.getString("email") %></td>
                     <td><%=rst.getString("contactno") %></td>
                     
                     <td><a href="delete_pharmacist.jsp?mid=<%=rst.getString("id")%>" class="btn-floating">Delete</td> 
                     
                 </tr>
            </tbody>
              <%
            }
        %>
    </table>
              
    <%}
        
         %>
         
         
         
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
