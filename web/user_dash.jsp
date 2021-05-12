<%-- 
    Document   : user_dash
    Created on : Mar 7, 2020, 10:38:57 PM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(session.getAttribute("username")==null)
    {%>
    <script>
        alert("You must be Logged In!");
        window.open("user.jsp","_self");
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
      <img src="1.png" alt="" class="responsive-img">
      <div class="card-content ">
        <span class="name flow-text">${username}</span>
        <br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from user where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
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
        </form>
        <form action="logout.jsp">
      <blockquote><input type="submit" name="logout" value="Logout" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
    </ul>
  </div>
    
    <div class="col l6 m6 s12">
        <form action="uploadServlet" method="post" enctype="multipart/form-data">
            <label><h5>Query</h5></label>
            <input type="text" name="ques" placeholder="Enter your Query" required="required">
            <label><h5>Upload File</h5></label>
            <input type="file" name="photo">
            <br>
            <input type="submit" value="Submit" name="submit" class="btn right">
            
            <br><br>
        </form>
        <hr>
       <% if(request.getParameter("view_profile")!=null)
       {%>
           <form>
               <label class="center teal-text"><h4>Update Form</h4></label>
               <label><h5>Your Name</h5></label>
               <input type="text" name="name" value=<%=rs.getString("name")%>>
               <label><h5>Your Username</h5></label>
               <input type="text" name="uname" value=<%=rs.getString("username")%>>
               <label><h5>Your Password</h5></label>
               <input type="text" name="password" value=<%=rs.getString("password")%>>
               <label><h5>Your Contact No.</h5></label>
               <input type="text" name="contact" value=<%=rs.getString("contact")%>>
               <label><h5>Your E-Mail</h5></label>
               <input type="text" name="email" value=<%=rs.getString("email")%>>
               <input type="submit" name="update" value="Update" class="btn">
           </form>
       <%}
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
                    pst.executeUpdate(); %>
                    <script>alert("Record Updated")</script>
           
       <%}
       %>
    </div>
    <div class="col l3 m6 s12">
    <div class="card hoverable">
            <div class="card-image">
              <img src="1.png" class="responsive-img">
                <span class="card-title">Online Store</span>
                  
            </div>
           
            <div class="card-action">
                <a href="online_store.jsp?uname=<%=rs.getString("username")%>" class="blue-text">Click Here to Visit</a>
            </div>
    </div>
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

<%
      String name=rs.getString("username");
      String email=rs.getString("email");
      String contact=rs.getString("contact");
      session.setAttribute("name",name);
      session.setAttribute("email",email);
      session.setAttribute("contact",contact);
      
%>

<%
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
%>
                <!--<script> alert("Done"); </script>-->       
    <%//}


%>

